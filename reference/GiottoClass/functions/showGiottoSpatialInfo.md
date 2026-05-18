# `showGiottoSpatialInfo` {#showGiottoSpatialInfo}

*Package:* `GiottoClass`  
*Title:* showGiottoSpatialInfo

## Description

show the available giotto spatial polygon information

## Usage

```r
showGiottoSpatialInfo(gobject)
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
`[showGiottoFeatInfo]()`,
`[showGiottoFeatMetadata]()`,
`[showGiottoImageNames]()`,
`[showGiottoNearestNetworks]()`,
`[showGiottoSpatEnrichments]()`,
`[showGiottoSpatGrids]()`,
`[showGiottoSpatLocs]()`,
`[showGiottoSpatNetworks]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

showGiottoSpatialInfo(g)
```

