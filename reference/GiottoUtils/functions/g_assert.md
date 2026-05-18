# `g_assert` {#g_assert}

*Package:* `GiottoUtils`  
*Title:* Assertion framework
*Aliases:* `assert_giotto`, `assert_dt`, `assert_file`, `assert_numeric`

## Description

Framework to perform assertions and provide informative errors
about both the input object and the test that was performed. Functions for
specific checks and messages can be built using this base function.

## Usage

```r
g_assert(x, test, msg = NULL, n = 2L, ...)

assert_giotto(gobject, n = 1L, ...)

assert_dt(x, n = 2L)

assert_file(x, n = 2L)

assert_numeric(x, n = 2L)
```

## Arguments

- `x`: object to test
- `test`: test to perform that should have a TRUE or FALSE outcome
- `msg`: error message provided as character vector. Using the token .name
will send the name of object being tested in the stack frame referenced by
`n`
- `n`: stack frames back in which to evaluate the param
- `...`: additional params to pass
- `gobject`: giotto object

## Value

A character message

## Examples

```r
x <- data.table::data.table(a = 1:3, b = 5:7)
g_assert(
    x,
    test = inherits(x, "data.table"),
    msg = c(.name, "must be of class data.table, not", class(x)),
    n = 0
)
x <- data.table::data.table(x = 1:3, y = 1:3)
assert_dt(x, n = 0)

write.table(data.frame(x = 1, y = 1), "my_file.txt")
x <- "my_file.txt"
assert_file(x, n = 0)

x <- 1
assert_numeric(x, n = 0)
```

