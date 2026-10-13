# `showGiottoNearestNetworks`

*Package:* `GiottoClass`  
*Title:* showGiottoNearestNetworks

## Description

shows the available nearest neighbor networks

## Usage

```r
showGiottoNearestNetworks(gobject, nrows = 3)
```

## Arguments

- `gobject`: giotto object
- `nrows`: number of network rows to print

## Value

prints the name and small subset of available nearest neighbor
network info

## See Also

Other functions to show data in giotto object: 
[`showGiottoCellMetadata()`](showGiottoCellMetadata.md),
[`showGiottoDimRed()`](showGiottoDimRed.md),
[`showGiottoExpression()`](showGiottoExpression.md),
[`showGiottoFeatInfo()`](showGiottoFeatInfo.md),
[`showGiottoFeatMetadata()`](showGiottoFeatMetadata.md),
[`showGiottoImageNames()`](showGiottoImageNames.md),
[`showGiottoSpatEnrichments()`](showGiottoSpatEnrichments.md),
[`showGiottoSpatGrids()`](showGiottoSpatGrids.md),
[`showGiottoSpatLocs()`](showGiottoSpatLocs.md),
[`showGiottoSpatNetworks()`](showGiottoSpatNetworks.md),
[`showGiottoSpatialInfo()`](showGiottoSpatialInfo.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

showGiottoNearestNetworks(g)
```

