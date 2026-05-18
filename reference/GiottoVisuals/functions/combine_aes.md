# `combine_aes` {#combine_aes}

*Package:* `GiottoVisuals`  
*Title:* Combine ggplot2 aesthetics

## Description

Utility for combining ggplot2 `aes` lists. Uses the last
provided value when aes names overlap.

## Usage

```r
combine_aes(..., warn_duplicates = TRUE)
```

## Arguments

- `...`: one or more objects of class `uneval`
(output from `[ggplot2::aes()](ggplot2:aes)`)
- `warn_duplicates`: logical. Warn when aes names overlap

## Value

uneval object

## See Also

Other ggplot2 plotting wrangling functions: 
`[gg_param]()`

## Examples

```r
a <- ggplot2::aes(a = a1, b = b1, c = c1)
b <- ggplot2::aes(x = x1, y = y1, a = a2, c = c2)

# warnings turned off
combine_aes(a, b, warn_duplicates = FALSE) # b values used for a,c
combine_aes(b, a, warn_duplicates = FALSE) # a values used for a,c
```

