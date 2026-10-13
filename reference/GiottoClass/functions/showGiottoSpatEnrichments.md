# `showGiottoSpatEnrichments`

*Package:* `GiottoClass`  
*Title:* showGiottoSpatEnrichments

## Description

shows the available spatial enrichment results

## Usage

```r
showGiottoSpatEnrichments(gobject, nrows = 4)
```

## Arguments

- `gobject`: giotto object
- `nrows`: number of rows to print for each spatial enrichment data.table

## Value

prints the name and small subset of available data.table

## See Also

Other functions to show data in giotto object: 
[`showGiottoCellMetadata()`](showGiottoCellMetadata.md),
[`showGiottoDimRed()`](showGiottoDimRed.md),
[`showGiottoExpression()`](showGiottoExpression.md),
[`showGiottoFeatInfo()`](showGiottoFeatInfo.md),
[`showGiottoFeatMetadata()`](showGiottoFeatMetadata.md),
[`showGiottoImageNames()`](showGiottoImageNames.md),
[`showGiottoNearestNetworks()`](showGiottoNearestNetworks.md),
[`showGiottoSpatGrids()`](showGiottoSpatGrids.md),
[`showGiottoSpatLocs()`](showGiottoSpatLocs.md),
[`showGiottoSpatNetworks()`](showGiottoSpatNetworks.md),
[`showGiottoSpatialInfo()`](showGiottoSpatialInfo.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

showGiottoSpatEnrichments(g)
```

