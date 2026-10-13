# `getNearestNetwork`

*Package:* `GiottoClass`  
*Title:* Get nearest neighbor network

## Description

Get a NN-network from a Giotto object

## Usage

```r
getNearestNetwork(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  nn_type = NULL,
  name = NULL,
  output = c("nnNetObj", "igraph", "data.table"),
  set_defaults = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `nn_type`: "kNN" or "sNN"
- `name`: name of NN network to be used
- `output`: return a giotto `nnNetObj`, `igraph`, `data.table` object.
Default 'nnNetObj'
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.

## Value

Giotto `nnNetObj`, `igraph` or `data.table` object

## See Also

Other expression space nearest network accessor functions: 
[`setNearestNetwork()`](setNearestNetwork.md)

Other functions to get data from giotto object: 
[`getCellMetadata()`](getCellMetadata.md),
[`getDimReduction()`](getDimReduction.md),
[`getExpression()`](getExpression.md),
[`getFeatureInfo()`](getFeatureInfo.md),
[`getFeatureMetadata()`](getFeatureMetadata.md),
[`getGiottoImage()`](getGiottoImage.md),
[`getMultiomics()`](getMultiomics.md),
[`getPolygonInfo()`](getPolygonInfo.md),
[`getSpatialEnrichment()`](getSpatialEnrichment.md),
[`getSpatialGrid()`](getSpatialGrid.md),
[`getSpatialLocations()`](getSpatialLocations.md),
[`getSpatialNetwork()`](getSpatialNetwork.md),
[`get_multiomics()`](get_multiomics.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

getNearestNetwork(gobject = g)
```

