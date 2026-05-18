# `distGiottoImage` {#distGiottoImage}

*Package:* `GiottoClass`  
*Title:* Plot distribution of image intensity values

## Description

Plot distribution of intensity values using either a density
plot or a histogram. Useful for finding image artefact outliers and
determining reasonable scaling cutoffs.

## Usage

```r
distGiottoImage(
  gobject = NULL,
  image_type = "largeImage",
  image_name = NULL,
  giottoLargeImage = NULL,
  method = c("dens", "hist"),
  show_max = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `image_type`: image object
type (only supports largeImage and is set as default)
- `image_name`: name of image object to use
- `giottoLargeImage`: giotto large image object
- `method`: plot type to show image intensity distribution
- `show_max`: logical. Plot the set max intensity as a vertical red line
- `...`: additional params to pass to `[terra::hist()](terra:hist)` or `[terra::density()](terra:density)`

## Value

density or histogram plot

## Details

Plot is generated from a downsampling of the original image

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

distGiottoImage(g, image_name = "image")
```

