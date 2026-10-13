# `setNearestNetwork`

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
[`getNearestNetwork()`](getNearestNetwork.md)

Other functions to set data in giotto object: 
[`setCellMetadata()`](setCellMetadata.md),
[`setDimReduction()`](setDimReduction.md),
[`setExpression()`](setExpression.md),
[`setFeatureInfo()`](setFeatureInfo.md),
[`setFeatureMetadata()`](setFeatureMetadata.md),
[`setGiotto,giotto,giottoBinPoints-method`](setGiotto%2Cgiotto%2CgiottoBinPoints-method.md),
[`setGiottoImage()`](setGiottoImage.md),
[`setMultiomics()`](setMultiomics.md),
[`setPolygonInfo()`](setPolygonInfo.md),
[`setSpatialEnrichment()`](setSpatialEnrichment.md),
[`setSpatialGrid()`](setSpatialGrid.md),
[`setSpatialLocations()`](setSpatialLocations.md),
[`setSpatialNetwork()`](setSpatialNetwork.md),
[`set_multiomics()`](set_multiomics.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
dimred <- getNearestNetwork(gobject = g)

setNearestNetwork(gobject = g, x = dimred)
```

