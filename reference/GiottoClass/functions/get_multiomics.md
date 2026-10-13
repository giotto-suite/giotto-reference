# `get_multiomics`

*Package:* `GiottoClass`  
*Title:* Get multiomics integration results

## Description

Get a multiomics integration result from a Giotto object

## Usage

```r
get_multiomics(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  integration_method = "WNN",
  result_name = "theta_weighted_matrix"
)
```

## Arguments

- `gobject`: A Giotto object
- `spat_unit`: spatial unit (e.g. 'cell')
- `feat_type`: integrated feature type (e.g. 'rna_protein')
- `integration_method`: multiomics integration method used. Default = 'WNN'
- `result_name`: Default = 'theta_weighted_matrix'

## Value

A multiomics integration result (e.g. theta_weighted_matrix from WNN)

## See Also

Other multiomics accessor functions: 
[`getMultiomics()`](getMultiomics.md),
[`setMultiomics()`](setMultiomics.md),
[`set_multiomics()`](set_multiomics.md)

Other functions to get data from giotto object: 
[`getCellMetadata()`](getCellMetadata.md),
[`getDimReduction()`](getDimReduction.md),
[`getExpression()`](getExpression.md),
[`getFeatureInfo()`](getFeatureInfo.md),
[`getFeatureMetadata()`](getFeatureMetadata.md),
[`getGiottoImage()`](getGiottoImage.md),
[`getMultiomics()`](getMultiomics.md),
[`getNearestNetwork()`](getNearestNetwork.md),
[`getPolygonInfo()`](getPolygonInfo.md),
[`getSpatialEnrichment()`](getSpatialEnrichment.md),
[`getSpatialGrid()`](getSpatialGrid.md),
[`getSpatialLocations()`](getSpatialLocations.md),
[`getSpatialNetwork()`](getSpatialNetwork.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
g <- setMultiomics(
    gobject = g, result = matrix(rnorm(100), nrow = 10),
    spat_unit = "cell", feat_type = "rna_protein"
)

get_multiomics(gobject = g, spat_unit = "cell", feat_type = "rna_protein")
```

