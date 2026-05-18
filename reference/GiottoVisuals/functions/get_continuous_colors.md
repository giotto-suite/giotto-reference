# `get_continuous_colors` {#get_continuous_colors}

*Package:* `GiottoVisuals`  
*Title:* Generate a continuous set of colors

## Description

Based on a vector of colors provided to `col`, make these colors continuous
(i.e. make it possible for an arbitrary `n` number of colors to be requested)
then return those `n` colors.  

`strategy` describes how to make these colors continuous:
- **'interpolate'** interpolates provided colors using
`[grDevices::colorRampPalette()](grDevices:colorRamp)`
- **'recycle'** - recycles the input color vector across the `n` requested.
- **'cutoff'** - supply only a maximum of as many colors as exist within the
originally supplied vector.

## Usage

```r
get_continuous_colors(col, n, strategy)
```

## Arguments

- `col`: character vector. colors to make continuous
- `n`: integer. number of colors to get
- `strategy`: one of 'cutoff', 'recycle', or 'interpolate'.
strategy to use when more colors are requested than exist

## Value

a vector of colors

## Examples

```r
get_continuous_colors(col = "#eb4034", n = 10, strategy = "interpolate")
```

