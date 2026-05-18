# `cor_flex` {#cor_flex}

*Package:* `GiottoClass`  
*Title:* cor_flex

## Description

cor_flex

## Usage

```r
cor_flex(x, ...)
```

## Arguments

- `x`: data to use
- `...`: other arguments passed to stats::cor()

## Value

numeric

## Examples

```r
m <- matrix(rnorm(100), nrow = 10)

cor_flex(m)
```

