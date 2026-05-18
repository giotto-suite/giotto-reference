# `centroids-generic` {#centroids-generic}

*Package:* `GiottoClass`  
*Title:* centroids-generic
*Aliases:* `centroids`, `centroids,giottoPolygon-method`

## Description

Access centroids information from polygon objects

## Usage

```r
centroids,giottoPolygon-method(x, append_gpolygon = FALSE)
```

## Arguments

- `x`: object
- `append_gpolygon`: whether to append the centroids results to the
`giottoPolygon` instead of returning bare `SpatVector`. Defaults to FALSE

## Value

spatVectorCentroids or spatVector

## Details

For giottoPolygon, if centroids already exist, pulls from
`spatVectorCentroids` slot. Otherwise, generates from
`spatVector` slot de novo

## Examples

```r
g <- GiottoData::loadSubObjectMini("giottoPolygon")

centroids(g)
```

