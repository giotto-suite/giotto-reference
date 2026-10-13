# `setSpatialGrid`

*Package:* `GiottoClass`  
*Title:* Set spatial grid

## Description

Function to set a spatial grid

## Usage

```r
setSpatialGrid(
  gobject,
  spatial_grid,
  spat_unit = NULL,
  feat_type = NULL,
  name = NULL,
  verbose = TRUE,
  set_defaults = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `spatial_grid`: spatial grid object
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `name`: name of spatial grid
- `verbose`: be verbose
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.
- `...`: additional params to pass

## Value

giotto object

## See Also

Other spatial grid data accessor functions: 
[`getSpatialGrid()`](getSpatialGrid.md)

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
[`setSpatialLocations()`](setSpatialLocations.md),
[`setSpatialNetwork()`](setSpatialNetwork.md),
[`set_multiomics()`](set_multiomics.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
g <- createSpatialGrid(g, sdimx_stepsize = 5, sdimy_stepsize = 5)
sg <- getSpatialGrid(g, return_grid_Obj = TRUE)

setSpatialGrid(gobject = g, spatial_grid = sg)
```

