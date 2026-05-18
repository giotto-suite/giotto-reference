# `showGiottoExpression` {#showGiottoExpression}

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
`[showGiottoCellMetadata]()`,
`[showGiottoDimRed]()`,
`[showGiottoFeatInfo]()`,
`[showGiottoFeatMetadata]()`,
`[showGiottoImageNames]()`,
`[showGiottoNearestNetworks]()`,
`[showGiottoSpatEnrichments]()`,
`[showGiottoSpatGrids]()`,
`[showGiottoSpatLocs]()`,
`[showGiottoSpatNetworks]()`,
`[showGiottoSpatialInfo]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

showGiottoExpression(g)
```

