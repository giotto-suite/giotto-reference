# `showGiottoExpression`

*Package:* `GiottoClass`  
*Title:* showGiottoExpression

## Description

shows the available matrices

## Usage

```r
showGiottoExpression(gobject, nrows = 4, ncols = 4)
```

## Arguments

- `gobject`: giotto object
- `nrows`: number of rows to print for each
matrix (ignored for sparse matrices)
- `ncols`: number of columns to print for each
matrix (ignored for sparse matrices)

## Value

prints the name and small subset of available matrices

## See Also

Other functions to show data in giotto object: 
[`showGiottoCellMetadata()`](showGiottoCellMetadata.md),
[`showGiottoDimRed()`](showGiottoDimRed.md),
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

showGiottoExpression(g)
```

