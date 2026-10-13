# `set_multiomics`

*Package:* `GiottoClass`  
*Title:* Set multiomics integration results

## Description

Set a multiomics integration result in a Giotto object

## Usage

```r
set_multiomics(
  gobject,
  result,
  spat_unit = NULL,
  feat_type = NULL,
  integration_method = "WNN",
  result_name = "theta_weighted_matrix",
  verbose = TRUE
)
```

## Arguments

- `gobject`: A Giotto object
- `result`: A matrix or result from multiomics
integration (e.g. theta weighted values from runWNN)
- `spat_unit`: spatial unit (e.g. 'cell')
- `feat_type`: (e.g. 'rna_protein')
- `integration_method`: multiomics integration method used. Default = 'WNN'
- `result_name`: Default = 'theta_weighted_matrix'
- `verbose`: be verbose

## Value

A giotto object

## See Also

Other multiomics accessor functions: 
[`getMultiomics()`](getMultiomics.md),
[`get_multiomics()`](get_multiomics.md),
[`setMultiomics()`](setMultiomics.md)

Other functions to set data in giotto object: 
[`setCellMetadata()`](setCellMetadata.md),
[`setDimReduction()`](setDimReduction.md),
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
[`setSpatialNetwork()`](setSpatialNetwork.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

set_multiomics(
    gobject = g, result = matrix(rnorm(100), nrow = 10),
    spat_unit = "cell", feat_type = "rna_protein"
)
```

