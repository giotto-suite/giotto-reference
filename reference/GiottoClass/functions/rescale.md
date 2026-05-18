# `rescale` {#rescale}

*Package:* `GiottoClass`  
*Title:* Rescale an object
*Aliases:* `rescale,giotto-method`, `rescale,spatLocsObj-method`, `rescale,data.frame-method`, `rescale,giottoPolygon-method`, `rescale,giottoPoints-method`, `rescale,giottoImage-method`, `rescale,giottoLargeImage-method`, `rescale,giottoAffineImage-method`, `rescale,affine2d-method`

## Description

Rescale an object spatially. Z dimension scaling is supported
for some types of subobjects.

## Usage

```r
rescale,giotto-method(
  x,
  fx = 1,
  fy = fx,
  x0,
  y0,
  spat_unit = ":all:",
  feat_type = ":all:",
  images = ":all:"
)

rescale,spatLocsObj-method(x, fx = 1, fy = fx, fz = fx, x0, y0, z0)

rescale,data.frame-method(
  x,
  fx = 1,
  fy = fx,
  fz = fx,
  x0,
  y0,
  z0,
  geom = c("sdimx", "sdimy", "sdimz")
)

rescale,giottoPolygon-method(x, fx = 1, fy = fx, x0, y0)

rescale,giottoPoints-method(x, fx = 1, fy = fx, x0, y0)

rescale,giottoImage-method(x, fx = 1, fy = fx, x0, y0)

rescale,giottoLargeImage-method(x, fx = 1, fy = fx, x0, y0)

rescale,giottoAffineImage-method(x, fx = 1, fy = fx, x0, y0)

rescale,affine2d-method(x, fx = 1, fy = fx, x0, y0)
```

## Arguments

- `x`: object
- `fx`: numeric > 0. The horizontal scaling factor
- `fy`: numeric > 0. The vertical scaling factor
- `x0`: numeric. x-coordinate of the center of rescaling. If missing,
the center of the extent of x is used
- `y0`: numeric. y-coordinate of the center of rescaling. If missing,
the center of the extent of x is used
- `spat_unit`: character vector. spatial units to affect
- `feat_type`: character vector. feature types to affect
- `images`: character vector. Images to affect
- `fz`: numeric > 0. The z scaling factor (only for supported objects)
- `z0`: numeric. z-coordinate of the center of rescaling. If missing,
the center of the extent of x is used (only for supported objects)
- `geom`: character. Named vector of colnames of x, y, (z) coordinate
columns. Default is `c("sdimx", "sdimy", "sdimz")`

## Value

re-scaled object

## Details

With the `giotto` object, the ":all:" token can be passed to `spat_unit`,
`feat_type`, and `images` arguments to affect all available items.

## Examples

```r
g <- GiottoData::loadSubObjectMini("spatLocsObj")

rescale(g)
```

