# `setNearestNetwork` {#setNearestNetwork}

*Package:* `GiottoClass`  
*Title:* Set nearest neighbor network

## Description

Set a NN-network for a Giotto object

## Usage

```r
setNearestNetwork(
  gobject,
  x,
  spat_unit = NULL,
  feat_type = NULL,
  nn_type = "sNN",
  name = "sNN.pca",
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: nnNetObj or list of nnNetObj. Passing NULL will remove a specified
set of nearest neighbor network information from the gobject
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `nn_type`: "kNN" or "sNN"
- `name`: name of NN network to be used
yet supported.
- `provenance`: provenance information (optional)
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## See Also

Other expression space nearest network accessor functions: 
`[getNearestNetwork]()`

Other functions to set data in giotto object: 
`[setCellMetadata]()`,
`[setDimReduction]()`,
`[setExpression]()`,
`[setFeatureInfo]()`,
`[setFeatureMetadata]()`,
`[setGiotto,giotto,giottoBinPoints-method]`,
`[setGiottoImage]()`,
`[setMultiomics]()`,
`[setPolygonInfo]()`,
`[setSpatialEnrichment]()`,
`[setSpatialGrid]()`,
`[setSpatialLocations]()`,
`[setSpatialNetwork]()`,
`[set_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
dimred <- getNearestNetwork(gobject = g)

setNearestNetwork(gobject = g, x = dimred)
```

