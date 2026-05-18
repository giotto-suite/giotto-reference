# `setSpatialEnrichment` {#setSpatialEnrichment}

*Package:* `GiottoClass`  
*Title:* Set spatial enrichment

## Description

Function to set a spatial enrichment slot

## Usage

```r
setSpatialEnrichment(
  gobject,
  x,
  spat_unit = NULL,
  feat_type = NULL,
  name = "enrichment",
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: spatEnrObj or list of spatEnrObj to set. Passing NULL will remove
a specified set of spatial enrichment information from the gobject.
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `name`: name of spatial enrichment results. Default "DWLS"
- `provenance`: provenance information (optional)
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## See Also

Other spatial enrichment data accessor functions: 
`[getSpatialEnrichment]()`

Other functions to set data in giotto object: 
`[setCellMetadata]()`,
`[setDimReduction]()`,
`[setExpression]()`,
`[setFeatureInfo]()`,
`[setFeatureMetadata]()`,
`[setGiotto,giotto,giottoBinPoints-method]`,
`[setGiottoImage]()`,
`[setMultiomics]()`,
`[setNearestNetwork]()`,
`[setPolygonInfo]()`,
`[setSpatialGrid]()`,
`[setSpatialLocations]()`,
`[setSpatialNetwork]()`,
`[set_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
spatenrich <- GiottoData::loadSubObjectMini("spatEnrObj")

g <- setSpatialEnrichment(g, spatenrich)
```

