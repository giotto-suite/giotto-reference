# `with` {#with}

*Package:* `GiottoUtils`  
*Title:* With utilities
*Aliases:* `gwith_options`, `gwith_package`, `gwith_seed`

## Description

Simple *with* functions. Similar to or from **withr** implementations.

## Usage

```r
gwith_options(new, code)

gwith_package(package, code, pos = 2L)

gwith_seed(seed = 1234, code, ..., substitute = TRUE, envir = parent.frame())
```

## Arguments

- `new`: new option to set and its value
- `code`: R code to execute with temporary settings
- `package`: character. The name of a package
- `pos`: integer. position in search to attach at. Default = 2
- `seed`: numeric. seed to set
- `...`: additional params to pass. See details.
- `substitute`: If `[TRUE](base:logical)`, argument `expr` is
   `[substitute](base)()`:ed, otherwise not.
- `envir`: The `[environment](base)` in which the expression should be evaluated.

## Value

the evaluated value of `code`

## Details

`gwith_seed()` : `...` passes to `set.seed()`

## Examples

```r
# options ###################################
gwith_options(list(gutils.temp = "found"), {
    print(getOption("gutils.temp", default = "not_found"))
})
getOption("gutils.temp", default = "not_found")

# packages ##################################
# temporarily attach at end of search (right before "base")
gwith_package("data.table", print(search()), pos = length(search()))
search()

# seed  #####################################
start_seed <- .Random.seed

# identical generation
a <- gwith_seed(runif(10), seed = 1234)
b <- gwith_seed(runif(10), seed = 1234)
identical(a, b)

# does not alter pre-existing seed
end_seed <- .Random.seed
identical(start_seed, end_seed)
```

