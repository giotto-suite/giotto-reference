# `transpose` {#transpose}

*Package:* `GiottoClass`  
*Title:* Transpose
*Aliases:* `t`, `t,giotto-method`, `t,spatLocsObj-method`, `t,spatialNetworkObj-method`, `t,giottoPoints-method`, `t,giottoPolygon-method`, `t,giottoLargeImage-method`, `t,giottoAffineImage-method`, `t,affine2d-method`, `t.spatLocsObj`, `t.spatialNetworkObj`

## Description

Spatially transpose an object

## Usage

```r
t,giotto-method(x)

t,spatLocsObj-method(x)

t,spatialNetworkObj-method(x)

t,giottoPoints-method(x)

t,giottoPolygon-method(x)

t,giottoLargeImage-method(x)

t,giottoAffineImage-method(x)

t,affine2d-method(x)

t.spatLocsObj(x)

t.spatialNetworkObj(x)
```

## Arguments

- `x`: object to be transposed

## Value

transposed object

## Examples

```r
sl <- GiottoData::loadSubObjectMini("spatLocsObj")

plot(t(sl))
```

