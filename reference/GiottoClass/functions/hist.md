# `hist` {#hist}

*Package:* `GiottoClass`  
*Title:* Histogram
*Aliases:* `hist,giottoLargeImage-method`

## Description

Create a histogram of the pixel values of a giottoLargeImage. Wrapper around
`[terra::hist()](terra:hist)`

## Usage

```r
hist,giottoLargeImage-method(x, show_max = TRUE, ...)
```

## Arguments

- `x`: giottoLargeImage
- `show_max`: logical. Plot the set max intensity as a vertical red line
- `...`: Arguments passed on to `[terra::hist](terra:hist)`
  - **``**:

## Value

histogram

## See Also

`[density()](=density)`

## Examples

```r
f <- system.file(package = "GiottoClass", "extdata/toy_intensity.tif")
gimg <- createGiottoLargeImage(f, use_rast_ext = TRUE, verbose = FALSE)

hist(gimg)
```

