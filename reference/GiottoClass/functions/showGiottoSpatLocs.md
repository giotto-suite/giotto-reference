# `showGiottoSpatLocs` {#showGiottoSpatLocs}

*Package:* `GiottoClass`  
*Title:* showGiottoSpatLocs

## Description

shows the available spatial locations

## Usage

```r
showGiottoSpatLocs(gobject, nrows = 4)
```

## Arguments

- `gobject`: giotto object
- `nrows`: number of rows to print for each spatial location data.table

## Value

prints the name and small subset of available data.table

## See Also

Other functions to show data in giotto object: 
`[showGiottoCellMetadata]()`,
`[showGiottoDimRed]()`,
`[showGiottoExpression]()`,
`[showGiottoFeatInfo]()`,
`[showGiottoFeatMetadata]()`,
`[showGiottoImageNames]()`,
`[showGiottoNearestNetworks]()`,
`[showGiottoSpatEnrichments]()`,
`[showGiottoSpatGrids]()`,
`[showGiottoSpatNetworks]()`,
`[showGiottoSpatialInfo]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

showGiottoSpatLocs(g)
```

