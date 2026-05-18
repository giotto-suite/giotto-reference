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
- `...`: Arguments passed on to `[grDevices::colorRampPalette](grDevices:colorRamp)`
  - **``**:

## Value

character vector

## See Also

Other basic color palette functions: 
`[getDistinctColors]()`,
`[getRainbowColors]()`

## Examples

```r
getMonochromeColors("green", n = 100)
```

