# `setFeatureInfo` {#setFeatureInfo}

*Package:* `GiottoClass`  
*Title:* Set feature info

## Description

Set giotto polygon spatVector for features

## Usage

```r
setFeatureInfo(
  gobject,
  x,
  feat_type = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: giottoPoints object or list of giottoPoints to set. Passing NULL
will remove the specified giottoPoints object from the giotto object
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## See Also

Other feature info data accessor functions: 
`[getFeatureInfo]()`

Other functions to set data in giotto object: 
`[setCellMetadata]()`,
`[setDimReduction]()`,
`[setExpression]()`,
`[setFeatureMetadata]()`,
`[setGiotto,giotto,giottoBinPoints-method]`,
`[setGiottoImage]()`,
`[setMultiomics]()`,
`[setNearestNetwork]()`,
`[setPolygonInfo]()`,
`[setSpatialEnrichment]()`,
`[setSpatialGrid]()`,
`[setSpatialLocations]()`,
`[setSpatialNetwork]()`,
`[set_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
featinfo <- getFeatureInfo(g, return_giottoPoints = TRUE)

setFeatureInfo(gobject = g, x = featinfo)
```

