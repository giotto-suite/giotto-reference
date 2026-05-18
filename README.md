# giotto-reference

LLM-friendly aggregated reference for the [Giotto](https://github.com/giotto-suite) spatial-omics R package suite.

Auto-generated weekly from each upstream package's `man/*.Rd` and `vignettes/` directories — no installation required to read it.

## Layout

```
reference/
  <Package>/
    README.md            # DESCRIPTION summary + indexes
    functions/<fn>.md    # one markdown file per documented function
    vignettes/<f>.Rmd    # vignettes copied verbatim
  TOC.md                 # cross-package table of all functions
  index.json             # structured sidecar for programmatic use
llms.txt                 # concise top-level index (llms.txt convention)
llms-full.txt            # every function doc concatenated
```

## Adding or pinning a package

Edit [packages.yml](packages.yml):

```yaml
org: giotto-suite
ref: main

packages:
  - Giotto
  - GiottoClass
  # pin a different ref, or pull from a fork:
  - name: GiottoVisuals
    ref: dev
  - name: SomeFork
    org: my-user
```

The next scheduled run (or a manual `workflow_dispatch`) will pick it up.

## Refresh schedule

[`refresh.yml`](.github/workflows/refresh.yml) runs:

- Weekly: Sundays 06:00 UTC
- On push to `packages.yml` or the build script
- On demand via the Actions tab

If the rebuild produces no diff, no commit is made.

## Local rebuild

```sh
Rscript scripts/build.R
```

Requires R plus the `yaml` and `jsonlite` packages. Source clones land in `.cache/` (gitignored).
