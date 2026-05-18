# `flip` {#flip}

*Package:* `GiottoClass`  
*Title:* Flip an object
*Aliases:* `flip,giotto-method`, `flip,giottoPolygon-method`, `flip,giottoPoints-method`, `flip,spatLocsObj-method`, `flip,spatialNetworkObj-method`, `flip,giottoLargeImage-method`, `flip,SpatExtent-method`, `flip,giottoAffineImage-method`, `flip,affine2d-method`

## Description

Flip an object over a designated x or y value depending on
direction param input. Note that this behavior may be different from terra's

## Usage

```r
flip,giotto-method(
  x,
  direction = "vertical",
  x0 = 0,
  y0 = 0,
  spat_unit = ":all:",
  feat_type = ":all:",
  ...
)

flip,giottoPolygon-method(x, direction = "vertical", x0 = 0, y0 = 0, ...)

flip,giottoPoints-method(x, direction = "vertical", x0 = 0, y0 = 0, ...)

flip,spatLocsObj-method(x, direction = "vertical", x0 = 0, y0 = 0, ...)

flip,spatialNetworkObj-method(x, direction = "vertical", x0 = 0, y0 = 0, ...)

flip,giottoLargeImage-method(x, direction = "vertical", x0 = 0, y0 = 0)

flip,SpatExtent-method(x, direction = "vertical", x0 = 0, y0 = 0)

flip,giottoAffineImage-method(x, direction = "vertical", x0 = 0, y0 = 0)

flip,affine2d-method(x, direction = "vertical", x0 = 0, y0 = 0)
```

## Arguments

- `x`: object
- `direction`: character. Direction to flip. Should be either partial
match to 'vertical' or 'horizontal'
- `x0`: x value to flip horizontally over (ignored for vertical). Pass NULL
to flip over the extent
- `y0`: y value to flip vertically over (ignored for horizontal). Pass NULL
to flip over the extent
- `spat_unit`: character vector. spatial units to affect
- `feat_type`: character vector. feature types to affect
- `...`: additional args to pass

## Value

flipped object

## Examples

```r
g <- GiottoData::loadSubObjectMini("spatLocsObj")

flip(g)
```

