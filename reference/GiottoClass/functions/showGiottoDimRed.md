# `showGiottoDimRed` {#showGiottoDimRed}

*Package:* `GiottoClass`  
*Title:* showGiottoDimRed

## Description

shows the available dimension reductions

## Usage

```r
showGiottoDimRed(gobject, nrows = 3, ncols = 2)
```

## Arguments

- `gobject`: giotto object
- `nrows`: number of coordinates rows to print
- `ncols`: number of coordinates columns to print

## Value

prints the name and small subset of available dimension reduction
coordinates

## See Also

Other functions to show data in giotto object: 
`[showGiottoCellMetadata]()`,
`[showGiottoExpression]()`,
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

showGiottoDimRed(g)
```

