# `getGiottoImage`

*Package:* `GiottoClass`  
*Title:* Get giotto image object

## Description

Get giotto one or more image objects from gobject

## Usage

```r
getGiottoImage(gobject, image_type = NULL, name = NULL)
```

## Arguments

- `gobject`: giotto object
- `image_type`: deprecated
- `name`: character vector. Names giotto image object(s)
[`showGiottoImageNames`](showGiottoImageNames.md) to get

## Value

a giotto image object

## See Also

Other image data accessor functions: 
[`setGiottoImage()`](setGiottoImage.md)

Other functions to get data from giotto object: 
[`getCellMetadata()`](getCellMetadata.md),
[`getDimReduction()`](getDimReduction.md),
[`getExpression()`](getExpression.md),
[`getFeatureInfo()`](getFeatureInfo.md),
[`getFeatureMetadata()`](getFeatureMetadata.md),
[`getMultiomics()`](getMultiomics.md),
[`getNearestNetwork()`](getNearestNetwork.md),
[`getPolygonInfo()`](getPolygonInfo.md),
[`getSpatialEnrichment()`](getSpatialEnrichment.md),
[`getSpatialGrid()`](getSpatialGrid.md),
[`getSpatialLocations()`](getSpatialLocations.md),
[`getSpatialNetwork()`](getSpatialNetwork.md),
[`get_multiomics()`](get_multiomics.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

getGiottoImage(gobject = g)
```

