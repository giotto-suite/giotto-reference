# `showGiottoImageNames` {#showGiottoImageNames}

*Package:* `GiottoClass`  
*Title:* showGiottoImageNames

## Description

Prints the available giotto images that are attached to the
Giotto object

## Usage

```r
showGiottoImageNames(gobject)
```

## Arguments

- `gobject`: a giotto object

## Value

prints names of available giotto image objects

## See Also

Other functions to show data in giotto object: 
`[showGiottoCellMetadata]()`,
`[showGiottoDimRed]()`,
`[showGiottoExpression]()`,
`[showGiottoFeatInfo]()`,
`[showGiottoFeatMetadata]()`,
`[showGiottoNearestNetworks]()`,
`[showGiottoSpatEnrichments]()`,
`[showGiottoSpatGrids]()`,
`[showGiottoSpatLocs]()`,
`[showGiottoSpatNetworks]()`,
`[showGiottoSpatialInfo]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

showGiottoImageNames(g)
```

