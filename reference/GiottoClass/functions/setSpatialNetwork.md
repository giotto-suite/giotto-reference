# `setSpatialNetwork`

*Package:* `GiottoClass`  
*Title:* Set spatial network

## Description

Function to set a spatial network

## Usage

```r
setSpatialNetwork(
  gobject,
  x,
  spat_unit = NULL,
  name = NULL,
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: spatialNetworkObj or list of spatialNetworkObj to set. Passing NULL
removes a specified set of spatial network information from the gobject.
- `spat_unit`: spatial unit (e.g. "cell")
- `name`: name of spatial network
- `provenance`: provenance name
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## See Also

Other spatial network data accessor functions: 
[`getSpatialNetwork()`](getSpatialNetwork.md)

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
[`set_multiomics()`](set_multiomics.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
spatnet <- getSpatialNetwork(g)

setSpatialNetwork(gobject = g, x = spatnet)
```

