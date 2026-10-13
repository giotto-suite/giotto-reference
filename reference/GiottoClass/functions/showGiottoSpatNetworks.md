# `showGiottoSpatNetworks`

*Package:* `GiottoClass`  
*Title:* showGiottoSpatNetworks

## Description

Prints the available spatial networks that are attached to the
Giotto object

## Usage

```r
showGiottoSpatNetworks(gobject, nrows = 4)
```

## Arguments

- `gobject`: a giotto object
- `nrows`: number of rows to print

## Value

prints names and small subset of available spatial network info

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
[`showGiottoSpatialInfo()`](showGiottoSpatialInfo.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

showGiottoSpatNetworks(g)
```

