# `setDimReduction` {#setDimReduction}

*Package:* `GiottoClass`  
*Title:* Set dimension reduction data

## Description

Function to dimension reduction information into the Giotto
object.

## Usage

```r
setDimReduction(
  gobject,
  x,
  spat_unit = NULL,
  feat_type = NULL,
  name = "pca",
  reduction = c("cells", "feats"),
  reduction_method = c("pca", "umap", "tsne"),
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: dimObj or list of dimObj to set. Passing NULL will remove a
specified set of dimension reduction information from the gobject
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `name`: name of reduction results
- `reduction`: reduction on cells or features
- `reduction_method`: reduction method (e.g. "pca")
- `provenance`: provenance information (optional)
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## See Also

Other dimensional reduction data accessor functions: 
`[getDimReduction]()`

Other functions to set data in giotto object: 
`[setCellMetadata]()`,
`[setExpression]()`,
`[setFeatureInfo]()`,
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
g <- GiottoData::loadGiottoMini("visium")
dimred <- getDimReduction(g)

setDimReduction(gobject = g, x = dimred)
```

