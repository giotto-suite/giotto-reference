# `setFeatureMetadata`

*Package:* `GiottoClass`  
*Title:* Set feature metadata

## Description

Function to set feature metadata into giotto object

## Usage

```r
setFeatureMetadata(
  gobject,
  x,
  spat_unit = NULL,
  feat_type = NULL,
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: featMetaObj or list of featMetaObj to set. Passing NULL will
reset a specified set of feature metadata in the giotto object.
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `provenance`: provenance information (optional)
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## See Also

Other functions to set data in giotto object: 
[`setCellMetadata()`](setCellMetadata.md),
[`setDimReduction()`](setDimReduction.md),
[`setExpression()`](setExpression.md),
[`setFeatureInfo()`](setFeatureInfo.md),
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
g <- GiottoData::loadGiottoMini("vizgen")
m1 <- getFeatureMetadata(g, output = "data.table")
m2 <- data.frame(
    feat_ID = m1$feat_ID,
    new_column = paste0("gene_", m1$feat_ID)
)

setFeatureMetadata(gobject = g, x = createFeatMetaObj(m2))
```

