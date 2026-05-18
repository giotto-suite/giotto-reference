# `str_convenience` {#str_convenience}

*Package:* `GiottoUtils`  
*Title:* String convenience functions
*Aliases:* `str_vector`, `str_bracket`, `str_parenth`, `str_double_quote`, `str_quote`, `str_reformat`

## Description

String convenience functions

## Usage

```r
str_vector(x, qchar = c("single", "double"))

str_bracket(x)

str_parenth(x)

str_double_quote(x)

str_quote(x)

str_reformat(x, ...)
```

## Arguments

- `x`: string item(s) to format
- `qchar`: quote character to use. Either 'single' or "double"
- `...`: additional params to pass to `[strwrap()](=strwrap)`

## Value

character

## Examples

```r
x <- "test"
cat(str_bracket(x), "\n")
cat(str_parenth(x), "\n")
cat(str_double_quote(x), "\n")
cat(str_quote(x), "\n")
# format a set of character values with str_vector()
vec <- c("item1", "item2", "item3")
cat(str_vector(vec)) # single quote (default)
cat(str_vector(vec, qchar = "double")) # double quote
# print post-processing with str_reformat()
txt <- "hello
        world"
cat(str_reformat(cat(txt), indent = 3))
```

