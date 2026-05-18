# `density` {#density}

*Package:* `GiottoClass`  
*Title:* Density plot
*Aliases:* `density,giottoLargeImage-method`

## Description

Create density plots of the pixel values of a giottoLargeImage. Wrapper
around `[terra::density()](terra:density)`.

## Usage

```r
density,giottoLargeImage-method(x, show_max = TRUE, ...)
```

## Arguments

- `x`: giottoLargeImage
- `show_max`: logical. Plot the set max intensity as a vertical red line
- `...`: Arguments passed on to `[terra::density](terra:density)`
  - **``**:

## Value

density plot

## See Also

`[hist()](=hist)`

## Examples

```r
f <- system.file(package = "GiottoClass", "extdata/toy_intensity.tif")
gimg <- createGiottoLargeImage(f, use_rast_ext = TRUE)

density(gimg)
```

