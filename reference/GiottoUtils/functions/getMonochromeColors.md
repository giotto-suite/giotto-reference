# `getMonochromeColors` {#getMonochromeColors}

*Package:* `GiottoUtils`  
*Title:* Create color scaling for a single color starting from black

## Description

Create color scaling for a single color starting from black

## Usage

```r
getMonochromeColors(col, n = 256L, ...)
```

## Arguments

- `col`: hexadecimal color to scale scale towards
- `n`: number of colors to request in monochrome palette
- `...`: Arguments passed on to `[grDevices::colorRampPalette](grDevices:colorRampPalette)`
  - **`bias`**: a positive number.  Higher values give more widely spaced
    colors at the high end.
- **`space`**: a character string; interpolation in RGB or CIE Lab
    color spaces.
- **`interpolate`**: use spline or linear interpolation.
- **`alpha`**: logical: should alpha channel (opacity) values be
    returned?   It is an error to give a true value if
    `space` is specified.

## Value

character vector

## See Also

Other basic color palette functions:
`[getDistinctColors()](=getDistinctColors)`,
`[getRainbowColors()](=getRainbowColors)`

## Examples

```r
getMonochromeColors("green", n = 100)
```

