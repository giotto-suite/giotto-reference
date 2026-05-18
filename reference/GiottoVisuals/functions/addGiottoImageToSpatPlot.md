# `addGiottoImageToSpatPlot` {#addGiottoImageToSpatPlot}

*Package:* `GiottoVisuals`  
*Title:* addGiottoImageToSpatPlot

## Description

Add a giotto image to a spatial ggplot object post creation

## Usage

```r
addGiottoImageToSpatPlot(
  spatpl = NULL,
  gimage = NULL,
  layer = c("bg", "overlay"),
  alpha = NULL
)
```

## Arguments

- `spatpl`: a spatial ggplot object
- `gimage`: a giotto image, see `[createGiottoImage]`
- `layer`: numeric layer on which to add the giotto image. OR takes 'bg' or
'overlay' as input to designate last (bottom/background) or first
(top/overlay)
- `alpha`: (optional) add giotto image to plot with transparency.
Numeric. From 0 (transparent) to 1 (fully visible)

## Value

an updated spatial ggplot object

## Examples

```r
g <- GiottoData::loadGiottoMini("visium", verbose = FALSE)

my_giottoimage <- GiottoClass::createGiottoImage(g,
    mg_object = system.file("image.png", package = "GiottoVisuals"),
    name = "image"
)

my_spatplot <- spatPlot2D(g, return_plot = TRUE)

addGiottoImageToSpatPlot(spatpl = my_spatplot, gimage = my_giottoimage)
```

