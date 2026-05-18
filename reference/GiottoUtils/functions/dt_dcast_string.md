# `dt_dcast_string` {#dt_dcast_string}

*Package:* `GiottoUtils`  
*Title:* dt_dcast_string

## Description

Data.table dcast using character inputs for formula

## Usage

```r
dt_dcast_string(data, col_name1, col_name2, value.var)
```

## Arguments

- `data`: a `data.table`
- `col_name1`: character. LHS of cast formula
- `col_name2`: character. RHS of cast formula
- `value.var`: character. Name of the column whose values will be filled to
cast.

## Value

A keyed data.table that has been cast

## See Also

`[data.table::dcast.data.table()](data.table:dcast.data.table)`

## Examples

```r
x <- data.table::data.table(
    col1 = c(rep("a", 3), rep("b", 3)),
    col2 = rep(LETTERS[1:3], 2),
    value = c(1:6)
)
force(x)
y <- dt_dcast_string(x, "col1", "col2", "value")
force(y)
```

