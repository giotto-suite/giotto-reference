# `spatial_binary_ops` {#spatial_binary_ops}

*Package:* `GiottoClass`  
*Title:* Spatial binary operations
*Aliases:* `snap`, `erase`, `symdif`, `union`, `intersect`, `erase,spatialClasses,spatialClasses-method`, `snap,giottoSpatial-method`, `symdif,spatialClasses,spatialClasses-method`, `union,spatialClasses,spatialClasses-method`, `intersect,spatialClasses,spatialClasses-method`

## Description

Perform geometric binary operations on Giotto spatial classes
(`giottoPolygon`, `giottoPoints` and `spatLocsObj`) and underlying
representations (only terra `SpatVector` right now.)

## Usage

```r
# S4 methods for giottoPolygon, giottoPoints, spatLocsObj, SpatVector #

erase,spatialClasses,spatialClasses-method(x, y, ...)

snap,giottoSpatial-method(x, y = NULL, tolerance, ...)

symdif,spatialClasses,spatialClasses-method(x, y, ...)

union,spatialClasses,spatialClasses-method(x, y)

intersect,spatialClasses,spatialClasses-method(x, y)
```

## Arguments

- `x`: spatial object 1
- `y`: spatial object 2 (can be missing or NULL)
- `...`: additional args to pass
- `tolerance`: numeric. Snapping tolerance (distance between geometries)

## Value

The same class as `x`

## Examples

```r
gpoly1 <- GiottoData::loadSubObjectMini("giottoPolygon")
epoly <- as.polygons(ext(c(6600, 6800, -5000, -4800)))
gpoly2 <- spatShift(gpoly1, dx = 20)

plot(gpoly1)
plot(union(gpoly1, gpoly2))
plot(erase(gpoly1, epoly))

plot(union(gpoly1, epoly))

plot(symdif(gpoly1, epoly))

plot(intersect(gpoly1, epoly))

if (FALSE) {
    # takes a long time so don't run in checks
    plot(snap(gpoly1, tolerance = 0.2))
}
```

