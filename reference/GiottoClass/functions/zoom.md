# `zoom` {#zoom}

*Package:* `GiottoClass`  
*Title:* Zoom a Giotto spatial object
*Aliases:* `zoom,giottoLargeImage-method`, `zoom,giottoPolygon-method`, `zoom,giottoPoints-method`

## Description

Works like `[terra::zoom()](terra:zoom)`. Zoom in on a plot by providing
a new extent, by default this is done by clicking twice on the existing
plot. When passing a `SpatExtent` without drawing, no pre-existing plot
is needed.

## Usage

```r
zoom,giottoLargeImage-method(x, e = terra::draw(), ...)

zoom,giottoPolygon-method(x, e = terra::draw(), ...)

zoom,giottoPoints-method(x, e = terra::draw(), ...)
```

## Arguments

- `x`: giotto image, giottoPolygon, or giottoPoints object
- `e`: SpatExtent
- `...`: additional parameters to pass to `plot()`

## Value

SpatExtent (invisibly)

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
gimg <- getGiottoImage(g, image_type = "largeImage")
gpoly <- GiottoData::loadSubObjectMini("giottoPolygon")
gpoints <- GiottoData::loadSubObjectMini("giottoPoints")
e <- ext(6400, 6800, -4860, -4750) # arbitrary

# With extent passed
zoom(gimg, e)
zoom(gpoly, e)
zoom(gpoints, e)
```

