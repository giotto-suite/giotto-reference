# `list_element_exists` {#list_element_exists}

*Package:* `GiottoUtils`  
*Title:* Test if list element exists

## Description

Test if nth element of list exists

## Usage

```r
list_element_exists(x, index)
```

## Arguments

- `x`: list
- `index`: element index

## Value

boolean

## Examples

```r
a <- list()
length(a) <- 4
list_element_exists(a, 5)
list_element_exists(a, 4)
```

