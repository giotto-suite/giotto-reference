# `XY` {#XY}

*Package:* `GiottoClass`  
*Title:* Spatial coordinates
*Aliases:* `XY<-`, `XY,spatLocsObj-method`, `XY<-,spatLocsObj,matrix-method`, `XY,giottoPoints-method`, `XY<-,giottoPoints,ANY-method`, `XY,giottoPolygon-method`, `XY<-,giottoPolygon,ANY-method`, `XY,SpatVector-method`, `XY<-,SpatVector,matrix-method`

## Description

Directly get and set the xy(z) coordinates of spatial
subobjects (currently `spatLocsObj`, `giottoPoints`, `giottoPolygon`).
coordinate values are retrieved and set as `matrix`.

## Usage

```r
XY,spatLocsObj-method(x, ...)

XY,spatLocsObj,matrix-method(x) <- value

XY,giottoPoints-method(x, ...)

XY,giottoPoints,ANY-method(x, ...) <- value

XY,giottoPolygon-method(x, ...)

XY,giottoPolygon,ANY-method(x, ...) <- value

XY,SpatVector-method(x, include_geom = FALSE, ...)

XY,SpatVector,matrix-method(x, geomtype = "points", ...) <- value
```

## Arguments

- `x`: object
- `...`: additional args to pass
- `value`: matrix. xy(z) coordinates to set
- `include_geom`: logical. Whether `geom`, `part`, and `hole` from the
terra geometry matrix should be included.
- `geomtype`: character. Either `"points"` or `"polygons"`. Only used
with the `SpatVector` replacement method

## Value

`XY()` returns `matrix`. XY<-() returns same class as `x`

## Examples

```r
sl <- GiottoData::loadSubObjectMini("spatLocsObj")
gpoly <- GiottoData::loadSubObjectMini("giottoPolygon")
gpoints <- GiottoData::loadSubObjectMini("giottoPoints")

m1 <- XY(sl)
plot(sl)
XY(sl) <- m1 + 1000
plot(sl)

m2 <- XY(gpoints)
plot(gpoints)
XY(gpoints) <- m2 * 2 + 1000
plot(gpoints)

m3 <- XY(gpoly)
plot(gpoly)
XY(gpoly) <- m3 / 2
plot(gpoly)

XY(gpoly[1:10]) # vertices from first 10 polys
```

