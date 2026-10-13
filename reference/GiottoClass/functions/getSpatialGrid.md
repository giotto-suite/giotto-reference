# `getSpatialGrid`

*Package:* `GiottoClass`  
*Title:* Get spatial grid

## Description

Function to get spatial grid

## Usage

```r
getSpatialGrid(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  name = NULL,
  return_grid_Obj = FALSE,
  set_defaults = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `name`: name of spatial grid
- `return_grid_Obj`: return grid object (default = FALSE)
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.

## Value

spatialGridObj

## See Also

Other spatial grid data accessor functions: 
[`setSpatialGrid()`](setSpatialGrid.md)

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
[`getSpatialLocations()`](getSpatialLocations.md),
[`getSpatialNetwork()`](getSpatialNetwork.md),
[`get_multiomics()`](get_multiomics.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
g <- createSpatialGrid(g, sdimx_stepsize = 5, sdimy_stepsize = 5)

getSpatialGrid(g)
```

