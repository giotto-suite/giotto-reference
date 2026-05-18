# `showGiottoSpatNetworks` {#showGiottoSpatNetworks}

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
`[showGiottoCellMetadata]()`,
`[showGiottoDimRed]()`,
`[showGiottoExpression]()`,
`[showGiottoFeatInfo]()`,
`[showGiottoFeatMetadata]()`,
`[showGiottoImageNames]()`,
`[showGiottoNearestNetworks]()`,
`[showGiottoSpatEnrichments]()`,
`[showGiottoSpatGrids]()`,
`[showGiottoSpatLocs]()`,
`[showGiottoSpatialInfo]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

showGiottoSpatNetworks(g)
```

