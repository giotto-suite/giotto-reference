# `showGiottoCellMetadata`

*Package:* `GiottoClass`  
*Title:* showGiottoCellMetadata

## Description

shows the available cell metadata

## Usage

```r
showGiottoCellMetadata(gobject, nrows = 4)
```

## Arguments

- `gobject`: giotto object
- `nrows`: number of rows to print for each metadata

## Value

prints the name and small subset of available metadata

## See Also

Other functions to show data in giotto object: 
[`showGiottoDimRed()`](showGiottoDimRed.md),
[`showGiottoExpression()`](showGiottoExpression.md),
[`showGiottoFeatInfo()`](showGiottoFeatInfo.md),
[`showGiottoFeatMetadata()`](showGiottoFeatMetadata.md),
[`showGiottoImageNames()`](showGiottoImageNames.md),
[`showGiottoNearestNetworks()`](showGiottoNearestNetworks.md),
[`showGiottoSpatEnrichments()`](showGiottoSpatEnrichments.md),
[`showGiottoSpatGrids()`](showGiottoSpatGrids.md),
[`showGiottoSpatLocs()`](showGiottoSpatLocs.md),
[`showGiottoSpatNetworks()`](showGiottoSpatNetworks.md),
[`showGiottoSpatialInfo()`](showGiottoSpatialInfo.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

showGiottoCellMetadata(g)
```

