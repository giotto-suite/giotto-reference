# `spatShift` {#spatShift}

*Package:* `GiottoClass`  
*Title:* Spatially shift an object
*Aliases:* `spatShift,giotto-method`, `spatShift,SpatExtent-method`, `spatShift,spatLocsObj-method`, `spatShift,data.frame-method`, `spatShift,spatialNetworkObj-method`, `spatShift,giottoPolygon-method`, `spatShift,giottoPoints-method`, `spatShift,giottoLargeImage-method`, `spatShift,giottoImage-method`, `spatShift,giottoAffineImage-method`, `spatShift,affine2d-method`

## Description

Shift the spatial locations of an object

## Usage

```r
spatShift,giotto-method(
  x,
  dx = 0,
  dy = 0,
  spat_unit = ":all:",
  feat_type = ":all:",
  images = ":all:"
)

spatShift,SpatExtent-method(x, dx = 0, dy = 0)

spatShift,spatLocsObj-method(x, dx = 0, dy = 0, dz = 0, copy_obj = TRUE, ...)

spatShift,data.frame-method(
  x,
  dx = 0,
  dy = 0,
  dz = 0,
  copy_obj = TRUE,
  geom = c("sdimx", "sdimy", "sdimz"),
  ...
)

spatShift,spatialNetworkObj-method(x, dx = 0, dy = 0, dz = 0, copy_obj = TRUE, ...)

spatShift,giottoPolygon-method(x, dx = 0, dy = 0, copy_obj = FALSE, ...)

spatShift,giottoPoints-method(x, dx = 0, dy = 0, copy_obj = FALSE, ...)

spatShift,giottoLargeImage-method(x, dx = 0, dy = 0, copy_obj = FALSE, ...)

spatShift,giottoImage-method(x, dx = 0, dy = 0, ...)

spatShift,giottoAffineImage-method(x, dx = 0, dy = 0, ...)

spatShift,affine2d-method(x, dx = 0, dy = 0, ...)
```

## Arguments

- `x`: object
- `dx`: numeric. The shift on the x axis
- `dy`: numeric. The shift on the y axis
- `spat_unit`: character vector. spatial units to affect
- `feat_type`: character vector. feature types to affect
- `images`: character vector. Images to affect.
- `dz`: numeric. The shift on the z axis
- `copy_obj`: Default = TRUE
- `...`: additional params to pass to methods
- `geom`: character. Named vector of colnames of x, y, (z) coordinate
columns. Default is `c("sdimx", "sdimy", "sdimz")`

## Value

object with shifted spatial locations

## Details

With the `giotto` object, the ":all:" token can be passed to `spat_unit`,
`feat_type`, and `images` arguments to affect all available items.

## Examples

```r
g <- GiottoData::loadSubObjectMini("spatLocsObj")

spatShift(g)
```

