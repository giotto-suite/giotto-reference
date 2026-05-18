# `shear` {#shear}

*Package:* `GiottoClass`  
*Title:* Apply a shear tranform
*Aliases:* `shear,spatLocsObj-method`, `shear,SpatVector-method`, `shear,giottoPoints-method`, `shear,giottoPolygon-method`, `shear,giottoLargeImage-method`, `shear,giottoAffineImage-method`, `shear,affine2d-method`

## Description

Apply shear transformation to a spatial object.
Currently only works for 2D transforms. This implementation
applies a shear along one axis by adding the value of the other
axis after a multiplicative factor `fx` or `fy` is applied.

## Usage

```r
shear,spatLocsObj-method(x, fx = 0, fy = 0, x0, y0, ...)

shear,SpatVector-method(x, fx = 0, fy = 0, x0, y0, ...)

shear,giottoPoints-method(x, fx = 0, fy = 0, x0, y0, ...)

shear,giottoPolygon-method(x, fx = 0, fy = 0, x0, y0, ...)

shear,giottoLargeImage-method(x, fx = 0, fy = 0, x0, y0, ...)

shear,giottoAffineImage-method(x, fx = 0, fy = 0, x0, y0, ...)

shear,affine2d-method(x, fx = 0, fy = 0, x0, y0, ...)
```

## Arguments

- `x`: object
- `fx`: numeric. x shear
- `fy`: numeric. y shear
- `x0`: numeric. x-origin of shear
- `y0`: numeric. y-origin of shear
- `...`: additional args to pass (none implemented)

## Value

shear transformed object

## Examples

```r
sl <- GiottoData::loadSubObjectMini("spatLocsObj")

plot(shear(sl, fx = 2))

# equivalent affine transform
shear_m <- diag(rep(1, 3))
shear_m[2, 1] <- 2
plot(affine(sl, shear_m))
plot(shear(sl, fx = 2, x0 = 0, y0 = 0))
```

