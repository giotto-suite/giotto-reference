#!/usr/bin/env Rscript
# Build the giotto-reference content.
#
# Steps per package listed in packages.yml:
#   1. Shallow-clone the repo into .cache/<pkg>/
#   2. Parse every man/*.Rd into reference/<pkg>/functions/<name>.md
#   3. Copy vignettes/*.Rmd into reference/<pkg>/vignettes/
#   4. Emit reference/<pkg>/README.md from DESCRIPTION + indexes
#
# After all packages are processed:
#   5. Emit reference/TOC.md, reference/index.json
#   6. Emit llms.txt and llms-full.txt at the repo root

suppressPackageStartupMessages({
    library(yaml)
    library(jsonlite)
    library(tools)
})

script_dir <- function() {
    args <- commandArgs(trailingOnly = FALSE)
    farg <- grep("^--file=", args, value = TRUE)
    if (length(farg)) return(dirname(normalizePath(sub("^--file=", "", farg[1]))))
    if (!is.null(sys.frame(1)$ofile)) return(dirname(normalizePath(sys.frame(1)$ofile)))
    getwd()
}
ROOT <- normalizePath(file.path(script_dir(), ".."))
CACHE <- file.path(ROOT, ".cache")
OUT <- file.path(ROOT, "reference")

# ---- config -----------------------------------------------------------------

read_packages <- function() {
    cfg <- yaml.load_file(file.path(ROOT, "packages.yml"))
    default_org <- cfg$org %||% "giotto-suite"
    default_ref <- cfg$ref %||% "main"
    lapply(cfg$packages, function(p) {
        if (is.character(p)) {
            list(name = p, org = default_org, ref = default_ref)
        } else {
            list(
                name = p$name,
                org = p$org %||% default_org,
                ref = p$ref %||% default_ref
            )
        }
    })
}

`%||%` <- function(a, b) {
    if (is.null(a)) return(b)
    if (length(a) == 1 && is.na(a)) return(b)
    a
}

# ---- clone ------------------------------------------------------------------

clone_package <- function(pkg) {
    dest <- file.path(CACHE, pkg$name)
    if (dir.exists(dest)) unlink(dest, recursive = TRUE)
    url <- sprintf("https://github.com/%s/%s.git", pkg$org, pkg$name)
    msg("clone %s @ %s", url, pkg$ref)
    status <- system2(
        "git",
        c("clone", "--depth", "1", "--branch", pkg$ref, url, dest),
        stdout = FALSE, stderr = FALSE
    )
    if (status != 0) stop("git clone failed for ", pkg$name)
    dest
}

# ---- Rd -> markdown ---------------------------------------------------------
#
# Walk the parse tree from tools::parse_Rd and emit markdown. Handles the
# tags that actually appear in roxygen-generated .Rd files; everything else
# falls back to its rendered text.

rd_inline <- function(node) {
    if (is.null(node)) return("")
    tag <- attr(node, "Rd_tag")
    txt <- function() paste0(vapply(node, rd_inline, character(1)), collapse = "")
    # Wrapper nodes (e.g. \item children) have no Rd_tag — just recurse.
    if (is.null(tag)) {
        if (is.list(node)) return(txt())
        return(paste0(as.character(node), collapse = ""))
    }
    switch(tag,
        "TEXT" = paste0(as.character(node), collapse = ""),
        "RCODE" = paste0(as.character(node), collapse = ""),
        "VERB" = paste0(as.character(node), collapse = ""),
        "\\code" = paste0("`", txt(), "`"),
        "\\samp" = paste0("`", txt(), "`"),
        "\\file" = paste0("`", txt(), "`"),
        "\\pkg" = paste0("**", txt(), "**"),
        "\\emph" = paste0("*", txt(), "*"),
        "\\strong" = paste0("**", txt(), "**"),
        "\\bold" = paste0("**", txt(), "**"),
        "\\dQuote" = paste0("“", txt(), "”"),
        "\\sQuote" = paste0("‘", txt(), "’"),
        "\\url" = paste0("<", txt(), ">"),
        "\\href" = {
            url <- rd_inline(node[[1]])
            label <- rd_inline(node[[2]])
            sprintf("[%s](%s)", label, url)
        },
        "\\link" = {
            target <- txt()
            opt <- attr(node, "Rd_option")
            if (!is.null(opt)) sprintf("[%s](%s)", target, as.character(opt))
            else sprintf("[%s]", target)
        },
        "\\eqn" = paste0("`", txt(), "`"),
        "\\deqn" = paste0("\n\n```\n", txt(), "\n```\n\n"),
        "\\cr" = "  \n",
        "\\dots" = "...",
        "\\ldots" = "...",
        "\\R" = "R",
        "\\method" = sprintf("%s.%s", rd_inline(node[[1]]), rd_inline(node[[2]])),
        "\\S4method" = sprintf("%s,%s-method",
                               rd_inline(node[[1]]), rd_inline(node[[2]])),
        "USERMACRO" = "",
        "COMMENT" = "",
        # default: recurse children
        txt()
    )
}

rd_block <- function(node) {
    tag <- attr(node, "Rd_tag")
    # Wrapper nodes: recurse into children as a block run.
    if (is.null(tag)) {
        if (is.list(node)) {
            return(paste0(vapply(node, rd_block, character(1)), collapse = ""))
        }
        return(paste0(as.character(node), collapse = ""))
    }

    if (tag == "\\itemize" || tag == "\\enumerate") {
        bullet <- if (tag == "\\itemize") "- " else "1. "
        # In \itemize, an \item{body} block parses as an empty \item marker
        # followed by sibling node(s) holding the body — accumulate content
        # between successive \item markers.
        items <- list()
        current <- NULL
        for (child in node) {
            ct <- attr(child, "Rd_tag")
            if (identical(ct, "\\item")) {
                if (!is.null(current)) items[[length(items) + 1]] <- current
                current <- character(0)
                # An \item with inline content (rare) is included too.
                if (length(child) > 0) {
                    current <- c(current, rd_inline(child))
                }
            } else if (!is.null(current)) {
                current <- c(current, rd_inline(child))
            }
        }
        if (!is.null(current)) items[[length(items) + 1]] <- current
        items_text <- vapply(items, function(x) trimws(paste0(x, collapse = "")), character(1))
        items_text <- items_text[nzchar(items_text)]
        if (!length(items_text)) return("")
        return(paste0(paste0(bullet, items_text, collapse = "\n"), "\n"))
    }
    if (tag == "\\describe") {
        items <- lapply(node, function(child) {
            if (!identical(attr(child, "Rd_tag"), "\\item")) return(NULL)
            name <- rd_inline(child[[1]])
            body <- paste0(vapply(child[-1], rd_inline, character(1)), collapse = "")
            sprintf("- **%s**: %s", trimws(name), trimws(body))
        })
        items <- Filter(Negate(is.null), items)
        return(paste0(paste(unlist(items), collapse = "\n"), "\n"))
    }
    if (tag == "\\preformatted") {
        return(paste0("\n```\n", paste0(vapply(node, rd_inline, character(1)), collapse = ""), "\n```\n"))
    }
    # default: treat as inline run
    rd_inline(node)
}

rd_section_text <- function(node) {
    # join block-level children with paragraph breaks
    parts <- vapply(node, rd_block, character(1))
    trimws(paste0(parts, collapse = ""))
}

rd_usage_text <- function(node) {
    # Route through the tag-aware walker so \method / \S4method / \dots etc.
    # render sensibly inside usage blocks.
    trimws(paste0(vapply(node, rd_inline, character(1)), collapse = ""))
}

rd_arguments <- function(node) {
    rows <- lapply(node, function(child) {
        if (!identical(attr(child, "Rd_tag"), "\\item")) return(NULL)
        name <- rd_inline(child[[1]])
        body <- paste0(vapply(child[-1], rd_block, character(1)), collapse = "")
        list(name = trimws(name), desc = trimws(body))
    })
    Filter(Negate(is.null), rows)
}

rd_to_md <- function(rd_path, package) {
    rd <- tryCatch(
        parse_Rd(rd_path),
        error = function(e) NULL
    )
    if (is.null(rd)) return(NULL)

    sections <- list()
    name <- NULL
    title <- NULL
    aliases <- character()

    for (node in rd) {
        tag <- attr(node, "Rd_tag")
        if (is.null(tag)) next
        switch(tag,
            "\\name" = { name <- trimws(rd_inline(node)) },
            "\\title" = { title <- trimws(rd_inline(node)) },
            "\\alias" = { aliases <- c(aliases, trimws(rd_inline(node))) },
            "\\usage" = { sections$usage <- rd_usage_text(node) },
            "\\description" = { sections$description <- rd_section_text(node) },
            "\\details" = { sections$details <- rd_section_text(node) },
            "\\value" = { sections$value <- rd_section_text(node) },
            "\\note" = { sections$note <- rd_section_text(node) },
            "\\seealso" = { sections$seealso <- rd_section_text(node) },
            "\\references" = { sections$references <- rd_section_text(node) },
            "\\examples" = { sections$examples <- rd_usage_text(node) },
            "\\arguments" = { sections$arguments <- rd_arguments(node) },
            NULL
        )
    }

    if (is.null(name)) return(NULL)

    md <- c(
        sprintf("# `%s` {#%s}", name, name),
        "",
        sprintf("*Package:* `%s`  ", package),
        sprintf("*Title:* %s", title %||% "")
    )
    if (length(aliases) > 1) {
        md <- c(md, sprintf("*Aliases:* %s",
                            paste0("`", setdiff(aliases, name), "`", collapse = ", ")))
    }
    md <- c(md, "")

    if (!is.null(sections$description)) {
        md <- c(md, "## Description", "", sections$description, "")
    }
    if (!is.null(sections$usage)) {
        md <- c(md, "## Usage", "", "```r", sections$usage, "```", "")
    }
    if (!is.null(sections$arguments) && length(sections$arguments) > 0) {
        md <- c(md, "## Arguments", "")
        for (arg in sections$arguments) {
            md <- c(md, sprintf("- `%s`: %s", arg$name, arg$desc))
        }
        md <- c(md, "")
    }
    if (!is.null(sections$value)) {
        md <- c(md, "## Value", "", sections$value, "")
    }
    if (!is.null(sections$details)) {
        md <- c(md, "## Details", "", sections$details, "")
    }
    if (!is.null(sections$note)) {
        md <- c(md, "## Note", "", sections$note, "")
    }
    if (!is.null(sections$seealso)) {
        md <- c(md, "## See Also", "", sections$seealso, "")
    }
    if (!is.null(sections$references)) {
        md <- c(md, "## References", "", sections$references, "")
    }
    if (!is.null(sections$examples)) {
        md <- c(md, "## Examples", "", "```r", sections$examples, "```", "")
    }

    list(name = name, title = title, aliases = aliases, md = paste(md, collapse = "\n"))
}

# ---- per-package build ------------------------------------------------------

build_package <- function(pkg) {
    src <- clone_package(pkg)
    pkg_out <- file.path(OUT, pkg$name)
    fn_out <- file.path(pkg_out, "functions")
    vg_out <- file.path(pkg_out, "vignettes")
    dir.create(fn_out, recursive = TRUE, showWarnings = FALSE)
    dir.create(vg_out, recursive = TRUE, showWarnings = FALSE)

    # DESCRIPTION
    desc_path <- file.path(src, "DESCRIPTION")
    desc <- c(Title = NA_character_, Version = NA_character_, Description = NA_character_)
    if (file.exists(desc_path)) {
        d <- read.dcf(desc_path)[1, ]
        for (k in names(d)) desc[k] <- d[[k]]
    }

    # function docs
    rd_files <- list.files(file.path(src, "man"), pattern = "\\.Rd$", full.names = TRUE)
    fn_index <- list()
    for (rd in rd_files) {
        result <- rd_to_md(rd, pkg$name)
        if (is.null(result)) next
        out_file <- file.path(fn_out, paste0(result$name, ".md"))
        writeLines(result$md, out_file)
        fn_index[[length(fn_index) + 1]] <- list(
            package = pkg$name,
            name = result$name,
            title = result$title %||% "",
            aliases = result$aliases,
            file = sub(paste0("^", ROOT, "/"), "", out_file)
        )
    }

    # vignettes (copy verbatim — .Rmd is already markdown with code chunks)
    vg_files <- list.files(file.path(src, "vignettes"),
                           pattern = "\\.(Rmd|md|qmd)$", full.names = TRUE,
                           ignore.case = TRUE)
    vg_index <- list()
    for (vg in vg_files) {
        out_file <- file.path(vg_out, basename(vg))
        file.copy(vg, out_file, overwrite = TRUE)
        vg_index[[length(vg_index) + 1]] <- list(
            package = pkg$name,
            file = sub(paste0("^", ROOT, "/"), "", out_file),
            name = tools::file_path_sans_ext(basename(vg))
        )
    }

    # per-package README
    readme <- c(
        sprintf("# %s", pkg$name),
        "",
        sprintf("*Source:* https://github.com/%s/%s (ref: `%s`)  ",
                pkg$org, pkg$name, pkg$ref),
        sprintf("*Title:* %s  ", desc["Title"] %||% ""),
        sprintf("*Version:* %s", desc["Version"] %||% ""),
        "",
        if (!is.na(desc["Description"])) c(trimws(desc["Description"]), "") else NULL,
        sprintf("## Vignettes (%d)", length(vg_index)),
        ""
    )
    for (v in vg_index) {
        readme <- c(readme, sprintf("- [%s](vignettes/%s)", v$name, basename(v$file)))
    }
    readme <- c(readme, "",
                sprintf("## Functions (%d)", length(fn_index)),
                "")
    for (f in fn_index) {
        readme <- c(readme,
                    sprintf("- [`%s`](functions/%s.md) — %s",
                            f$name, f$name, f$title))
    }
    writeLines(readme, file.path(pkg_out, "README.md"))

    list(package = pkg$name, functions = fn_index, vignettes = vg_index, desc = desc)
}

# ---- top-level indexes ------------------------------------------------------

build_indexes <- function(results) {
    all_fns <- do.call(c, lapply(results, function(r) r$functions))
    all_vgs <- do.call(c, lapply(results, function(r) r$vignettes))

    # TOC.md
    toc <- c(
        "# Function Reference TOC",
        "",
        sprintf("Generated %s. %d functions across %d packages.",
                format(Sys.time(), "%Y-%m-%d %H:%M UTC", tz = "UTC"),
                length(all_fns), length(results)),
        "",
        "| Package | Function | Title |",
        "|---|---|---|"
    )
    for (f in all_fns) {
        link <- sprintf("[`%s`](%s)", f$name, f$file)
        title <- gsub("\\|", "\\\\|", f$title)
        toc <- c(toc, sprintf("| %s | %s | %s |", f$package, link, title))
    }
    writeLines(toc, file.path(OUT, "TOC.md"))

    # index.json
    write_json(
        list(
            generated_at = format(Sys.time(), "%Y-%m-%dT%H:%M:%SZ", tz = "UTC"),
            packages = lapply(results, function(r) {
                list(
                    name = r$package,
                    title = unname(r$desc["Title"]) %||% "",
                    version = unname(r$desc["Version"]) %||% "",
                    n_functions = length(r$functions),
                    n_vignettes = length(r$vignettes)
                )
            }),
            functions = all_fns,
            vignettes = all_vgs
        ),
        file.path(OUT, "index.json"),
        auto_unbox = TRUE, pretty = 2
    )

    # llms.txt — concise top-level index per convention
    llms <- c(
        "# Giotto Reference",
        "",
        "> Function and vignette reference for the Giotto spatial-omics R package suite.",
        "> Auto-generated weekly from each package's man/ and vignettes/ directories.",
        ""
    )
    for (r in results) {
        llms <- c(llms,
                  sprintf("## %s", r$package),
                  sprintf("- [Package README](reference/%s/README.md)", r$package))
        for (v in r$vignettes) {
            llms <- c(llms, sprintf("- [Vignette: %s](%s)", v$name, v$file))
        }
        for (f in r$functions) {
            llms <- c(llms, sprintf("- [%s](%s): %s", f$name, f$file, f$title))
        }
        llms <- c(llms, "")
    }
    writeLines(llms, file.path(ROOT, "llms.txt"))

    # llms-full.txt — every doc concatenated
    full <- c("# Giotto Reference (full)", "")
    for (r in results) {
        full <- c(full, sprintf("\n# Package: %s\n", r$package))
        for (f in r$functions) {
            content <- tryCatch(readLines(file.path(ROOT, f$file)), error = function(e) character())
            full <- c(full, "", content, "")
        }
    }
    writeLines(full, file.path(ROOT, "llms-full.txt"))
}

# ---- main -------------------------------------------------------------------

msg <- function(fmt, ...) cat(sprintf(paste0("[build] ", fmt, "\n"), ...))

main <- function() {
    if (dir.exists(OUT)) unlink(OUT, recursive = TRUE)
    dir.create(OUT, recursive = TRUE, showWarnings = FALSE)
    dir.create(CACHE, recursive = TRUE, showWarnings = FALSE)

    pkgs <- read_packages()
    msg("building %d packages: %s", length(pkgs),
        paste(vapply(pkgs, function(p) p$name, character(1)), collapse = ", "))

    results <- lapply(pkgs, build_package)
    build_indexes(results)

    msg("done. wrote %s, llms.txt, llms-full.txt", OUT)
}

main()
