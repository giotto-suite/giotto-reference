# `getSpatialEnrichment` {#getSpatialEnrichment}

*Package:* `GiottoClass`  
*Title:* Get spatial enrichment

## Description

Function to get a spatial enrichment data.table

## Usage

```r
getSpatialEnrichment(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  name = "DWLS",
  output = c("spatEnrObj", "data.table"),
  copy_obj = TRUE,
  set_defaults = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `name`: name of spatial enrichment results. Default "DWLS"
- `output`: what format in which to get information (e.g. "data.table")
- `copy_obj`: whether to deep copy/duplicate when getting the object
(default = TRUE)
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.

## Value

spatEnrObj or data.table with fractions

## See Also

Other spatial enrichment data accessor functions: 
`[setSpatialEnrichment]()`

Other functions to get data from giotto object: 
`[getCellMetadata]()`,
`[getDimReduction]()`,
`[getExpression]()`,
`[getFeatureInfo]()`,
`[getFeatureMetadata]()`,
`[getGiottoImage]()`,
`[getMultiomics]()`,
`[getNearestNetwork]()`,
`[getPolygonInfo]()`,
`[getSpatialGrid]()`,
`[getSpatialLocations]()`,
`[getSpatialNetwork]()`,
`[get_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

getSpatialEnrichment(g, spat_unit = "aggregate", name = "cluster_metagene")
```

