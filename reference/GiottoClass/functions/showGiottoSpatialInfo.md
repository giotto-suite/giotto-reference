# `showGiottoSpatialInfo`

*Package:* `GiottoClass`  
*Title:* showGiottoSpatialInfo

## Description

show the available giotto spatial polygon information

## Usage

```r
showGiottoSpatialInfo(gobject)
```

## Arguments

- `gobject`: giotto object

## Value

SpatVector

## See Also

Other functions to show data in giotto object: 
[`showGiottoCellMetadata()`](showGiottoCellMetadata.md),
[`showGiottoDimRed()`](showGiottoDimRed.md),
[`showGiottoExpression()`](showGiottoExpression.md),
[`showGiottoFeatInfo()`](showGiottoFeatInfo.md),
[`showGiottoFeatMetadata()`](showGiottoFeatMetadata.md),
[`showGiottoImageNames()`](showGiottoImageNames.md),
[`showGiottoNearestNetworks()`](showGiottoNearestNetworks.md),
[`showGiottoSpatEnrichments()`](showGiottoSpatEnrichments.md),
[`showGiottoSpatGrids()`](showGiottoSpatGrids.md),
[`showGiottoSpatLocs()`](showGiottoSpatLocs.md),
[`showGiottoSpatNetworks()`](showGiottoSpatNetworks.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

showGiottoSpatialInfo(g)
```

