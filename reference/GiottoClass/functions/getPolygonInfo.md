# `getPolygonInfo`

*Package:* `GiottoClass`  
*Title:* Get polygon info

## Description

Get giotto polygon spatVector

## Usage

```r
getPolygonInfo(
  gobject = NULL,
  polygon_name = NULL,
  polygon_overlap = NULL,
  return_giottoPolygon = FALSE,
  verbose = TRUE,
  simplify = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `polygon_name`: name of polygons. Default is "cell"
- `polygon_overlap`: include polygon overlap information
- `return_giottoPolygon`: (Defaults to FALSE) Return as giottoPolygon
S4 object
- `verbose`: be verbose
- `simplify`: logical. Whether or not to take object out of a list when
there is a length of 1.

## Value

spatVector

## See Also

Other polygon info data accessor functions: 
[`setPolygonInfo()`](setPolygonInfo.md)

Other functions to get data from giotto object: 
[`getCellMetadata()`](getCellMetadata.md),
[`getDimReduction()`](getDimReduction.md),
[`getExpression()`](getExpression.md),
[`getFeatureInfo()`](getFeatureInfo.md),
[`getFeatureMetadata()`](getFeatureMetadata.md),
[`getGiottoImage()`](getGiottoImage.md),
[`getMultiomics()`](getMultiomics.md),
[`getNearestNetwork()`](getNearestNetwork.md),
[`getSpatialEnrichment()`](getSpatialEnrichment.md),
[`getSpatialGrid()`](getSpatialGrid.md),
[`getSpatialLocations()`](getSpatialLocations.md),
[`getSpatialNetwork()`](getSpatialNetwork.md),
[`get_multiomics()`](get_multiomics.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

getPolygonInfo(g)
```

