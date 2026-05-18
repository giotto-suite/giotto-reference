# `spin` {#spin}

*Package:* `GiottoClass`  
*Title:* Spin an object
*Aliases:* `spin,giotto-method`, `spin,giottoPolygon-method`, `spin,giottoPoints-method`, `spin,spatLocsObj-method`, `spin,data.frame-method`, `spin,giottoLargeImage-method`, `spin,giottoAffineImage-method`, `spin,affine2d-method`

## Description

Spin (rotate) an object spatially (usually limited to xy
rotations)

## Usage

```r
spin,giotto-method(x, angle, x0 = NULL, y0 = NULL, spat_unit = ":all:", feat_type = ":all:")

spin,giottoPolygon-method(x, angle, x0 = NULL, y0 = NULL)

spin,giottoPoints-method(x, angle, x0 = NULL, y0 = NULL)

spin,spatLocsObj-method(
  x,
  angle = NULL,
  x0 = NULL,
  y0 = NULL,
  z0 = NULL,
  xy_angle = NULL,
  zy_angle = NULL,
  xz_angle = NULL
)

spin,data.frame-method(
  x,
  angle = NULL,
  x0 = NULL,
  y0 = NULL,
  z0 = NULL,
  xy_angle = NULL,
  zy_angle = NULL,
  xz_angle = NULL,
  geom = c("sdimx", "sdimy", "sdimz")
)

spin,giottoLargeImage-method(x, angle = NULL, x0 = NULL, y0 = NULL, ...)

spin,giottoAffineImage-method(x, angle = NULL, x0 = NULL, y0 = NULL, ...)

spin,affine2d-method(x, angle = NULL, x0 = NULL, y0 = NULL)
```

## Arguments

- `x`: object
- `angle`: numeric. Angle of rotation in degrees
- `x0`: numeric. x-coordinate of the center of rotation. Defaults to
center x val if not given.
- `y0`: numeric. y-coordinate of the center of rotation. Defaults to
center y val if not given.
- `spat_unit`: character vector. spatial units to affect
- `feat_type`: character vector. feature types to affect
(giottoPoints only).
- `z0`: spatLocsObj specific. Numeric. z-coordinate of the center of
rotation. Depending on if z data is present, defaults to either 0 or
center z val if not given.
- `xy_angle`: spatLocsObj specific. xy plane rotation in degrees.
Overrides angle param
- `zy_angle`: spatLocsObj specific. zy plane rotation
- `xz_angle`: spatLocsObj specific. xz plane rotation
- `geom`: character. Named vector of colnames of x, y, (z) coordinate
columns. Default is `c("sdimx", "sdimy", "sdimz")`
- `...`: additional params to pass

## Value

spun object

## Examples

```r
g <- GiottoData::loadSubObjectMini("spatLocsObj")

spin(g)
```

