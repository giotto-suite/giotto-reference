# `simple_palette_factory` {#simple_palette_factory}

*Package:* `GiottoVisuals`  
*Title:* Generate a simple palette function

## Description

Simple palette function generator. Creates a function with param n that
dictates how many colors to return from the provided vector of hexadecimal
color values. Generated functions send warning if there are not enough colors
to use and it needs to recycle values.

## Usage

```r
simple_palette_factory(col, rev = FALSE, strategy = "interpolate")
```

## Arguments

- `col`: character vector. Hexadecimal color codes
- `rev`: whether to reverse order of vector
- `strategy`: policy when insufficient colors are available

## Value

a function

## See Also

`[set_default_color_discrete()](=set_default_color_discrete)`

## Examples

```r
simple_palette_factory(col = "#eb4034")
```

