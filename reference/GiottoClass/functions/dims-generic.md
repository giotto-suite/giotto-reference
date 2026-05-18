# `dims-generic` {#dims-generic}

*Package:* `GiottoClass`  
*Title:* Dimensions of giotto objects
*Aliases:* `nrow,giotto-method`, `nrow,giottoPoints-method`, `nrow,giottoPolygon-method`, `nrow,spatLocsObj-method`, `nrow,exprData-method`, `nrow,metaData-method`, `nrow,spatialNetworkObj-method`, `nrow,enrData-method`, `nrow,dimObj-method`, `nrow,overlapPointDT-method`, `nrow,overlapIntensityDT-method`, `ncol,giotto-method`, `ncol,exprData-method`, `ncol,metaData-method`, `ncol,enrData-method`, `ncol,dimObj-method`, `ncol,overlapPointDT-method`, `ncol,overlapIntensityDT-method`, `dim,giotto-method`, `dim,spatLocsObj-method`, `dim,exprData-method`, `dim,metaData-method`, `dim,enrData-method`, `dim,giottoLargeImage-method`, `dim,giottoPolygon-method`, `dim,giottoPoints-method`, `dim,overlapPointDT-method`, `dim,overlapIntensityDT-method`

## Description

Find the dimensions of an object

## Usage

```r
nrow,giotto-method(x)

nrow,giottoPoints-method(x)

nrow,giottoPolygon-method(x)

nrow,spatLocsObj-method(x)

nrow,exprData-method(x)

nrow,metaData-method(x)

nrow,spatialNetworkObj-method(x)

nrow,enrData-method(x)

nrow,dimObj-method(x)

nrow,overlapPointDT-method(x)

nrow,overlapIntensityDT-method(x)

ncol,giotto-method(x)

ncol,exprData-method(x)

ncol,metaData-method(x)

ncol,enrData-method(x)

ncol,dimObj-method(x)

ncol,overlapPointDT-method(x)

ncol,overlapIntensityDT-method(x)

dim,giotto-method(x)

dim,spatLocsObj-method(x)

dim,exprData-method(x)

dim,metaData-method(x)

dim,enrData-method(x)

dim,giottoLargeImage-method(x)

dim,giottoPolygon-method(x)

dim,giottoPoints-method(x)

dim,overlapPointDT-method(x)

dim,overlapIntensityDT-method(x)
```

## Arguments

- `x`: object to check dimensions of

## Value

numeric

## Examples

```r
g <- GiottoData::loadSubObjectMini("giottoPoints")

nrow(g)
```

