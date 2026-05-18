# `getFeatureInfo` {#getFeatureInfo}

*Package:* `GiottoClass`  
*Title:* Get feature info

## Description

Get giotto points spatVector

## Usage

```r
getFeatureInfo(
  gobject = gobject,
  feat_type = NULL,
  return_giottoPoints = FALSE,
  set_defaults = TRUE,
  simplify = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `return_giottoPoints`: return as a giottoPoints object
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.
- `simplify`: logical. Whether or not to take object out of a list when
there is a length of 1.

## Value

giotto points spatVector

## See Also

Other feature info data accessor functions: 
`[setFeatureInfo]()`

Other functions to get data from giotto object: 
`[getCellMetadata]()`,
`[getDimReduction]()`,
`[getExpression]()`,
`[getFeatureMetadata]()`,
`[getGiottoImage]()`,
`[getMultiomics]()`,
`[getNearestNetwork]()`,
`[getPolygonInfo]()`,
`[getSpatialEnrichment]()`,
`[getSpatialGrid]()`,
`[getSpatialLocations]()`,
`[getSpatialNetwork]()`,
`[get_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

getFeatureInfo(g)
```

