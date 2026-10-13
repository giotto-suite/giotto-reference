# `setDimReduction`

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
[`getDimReduction()`](getDimReduction.md)

Other functions to set data in giotto object: 
[`setCellMetadata()`](setCellMetadata.md),
[`setExpression()`](setExpression.md),
[`setFeatureInfo()`](setFeatureInfo.md),
[`setFeatureMetadata()`](setFeatureMetadata.md),
[`setGiotto,giotto,giottoBinPoints-method`](setGiotto%2Cgiotto%2CgiottoBinPoints-method.md),
[`setGiottoImage()`](setGiottoImage.md),
[`setMultiomics()`](setMultiomics.md),
[`setNearestNetwork()`](setNearestNetwork.md),
[`setPolygonInfo()`](setPolygonInfo.md),
[`setSpatialEnrichment()`](setSpatialEnrichment.md),
[`setSpatialGrid()`](setSpatialGrid.md),
[`setSpatialLocations()`](setSpatialLocations.md),
[`setSpatialNetwork()`](setSpatialNetwork.md),
[`set_multiomics()`](set_multiomics.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
dimred <- getDimReduction(g)

setDimReduction(gobject = g, x = dimred)
```

