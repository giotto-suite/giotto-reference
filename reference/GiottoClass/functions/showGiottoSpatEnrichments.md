# `showGiottoSpatEnrichments` {#showGiottoSpatEnrichments}

*Package:* `GiottoClass`  
*Title:* showGiottoSpatEnrichments

## Description

shows the available spatial enrichment results

## Usage

```r
showGiottoSpatEnrichments(gobject, nrows = 4)
```

## Arguments

- `gobject`: giotto object
- `nrows`: number of rows to print for each spatial enrichment data.table

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
`[showGiottoSpatGrids]()`,
`[showGiottoSpatLocs]()`,
`[showGiottoSpatNetworks]()`,
`[showGiottoSpatialInfo]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

showGiottoSpatEnrichments(g)
```

