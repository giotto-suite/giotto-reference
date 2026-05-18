# `getFeatureMetadata` {#getFeatureMetadata}

*Package:* `GiottoClass`  
*Title:* getFeatureMetadata

## Description

Get feature metadata from giotto object

## Usage

```r
getFeatureMetadata(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  output = c("featMetaObj", "data.table"),
  copy_obj = TRUE,
  set_defaults = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `output`: return as either 'data.table' or 'featMetaObj'
- `copy_obj`: whether to perform a deepcopy of the data.table information
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.

## Value

a data.table or featMetaObj

## See Also

fDataDT

Other functions to get data from giotto object: 
`[getCellMetadata]()`,
`[getDimReduction]()`,
`[getExpression]()`,
`[getFeatureInfo]()`,
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

getFeatureMetadata(g)
```

