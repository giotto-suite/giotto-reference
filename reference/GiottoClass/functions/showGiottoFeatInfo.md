# `showGiottoFeatInfo` {#showGiottoFeatInfo}

*Package:* `GiottoClass`  
*Title:* showGiottoFeatInfo

## Description

show the available giotto spatial feature information

## Usage

```r
showGiottoFeatInfo(gobject)
```

## Arguments

- `gobject`: giotto object

## Value

SpatVector

## See Also

Other functions to show data in giotto object: 
`[showGiottoCellMetadata]()`,
`[showGiottoDimRed]()`,
`[showGiottoExpression]()`,
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
g <- GiottoData::loadGiottoMini("vizgen")

showGiottoFeatInfo(g)
```

