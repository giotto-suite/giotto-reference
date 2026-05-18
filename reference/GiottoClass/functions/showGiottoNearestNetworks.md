# `showGiottoNearestNetworks` {#showGiottoNearestNetworks}

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
`[showGiottoCellMetadata]()`,
`[showGiottoDimRed]()`,
`[showGiottoExpression]()`,
`[showGiottoFeatInfo]()`,
`[showGiottoFeatMetadata]()`,
`[showGiottoImageNames]()`,
`[showGiottoSpatEnrichments]()`,
`[showGiottoSpatGrids]()`,
`[showGiottoSpatLocs]()`,
`[showGiottoSpatNetworks]()`,
`[showGiottoSpatialInfo]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

showGiottoNearestNetworks(g)
```

