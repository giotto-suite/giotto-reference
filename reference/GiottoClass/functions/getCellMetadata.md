# `getCellMetadata` {#getCellMetadata}

*Package:* `GiottoClass`  
*Title:* getCellMetadata

## Description

Get cell metadata from giotto object

## Usage

```r
getCellMetadata(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  output = c("cellMetaObj", "data.table"),
  copy_obj = TRUE,
  set_defaults = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `output`: return as either 'data.table' or 'cellMetaObj'
- `copy_obj`: whether to deep copy/duplicate when getting the object
(default = TRUE)
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.

## Value

a data.table or cellMetaObj

## See Also

pDataDT

Other functions to get data from giotto object: 
`[getDimReduction]()`,
`[getExpression]()`,
`[getFeatureInfo]()`,
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
g <- GiottoData::loadGiottoMini("visium")

getCellMetadata(g)
```

