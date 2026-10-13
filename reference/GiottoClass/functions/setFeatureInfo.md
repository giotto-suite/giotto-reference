# `setFeatureInfo`

*Package:* `GiottoClass`  
*Title:* Set feature info

## Description

Set giotto polygon spatVector for features

## Usage

```r
setFeatureInfo(
  gobject,
  x,
  feat_type = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: giottoPoints object or list of giottoPoints to set. Passing NULL
will remove the specified giottoPoints object from the giotto object
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## See Also

Other feature info data accessor functions: 
[`getFeatureInfo()`](getFeatureInfo.md)

Other functions to set data in giotto object: 
[`setCellMetadata()`](setCellMetadata.md),
[`setDimReduction()`](setDimReduction.md),
[`setExpression()`](setExpression.md),
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
g <- GiottoData::loadGiottoMini("vizgen")
featinfo <- getFeatureInfo(g, return_giottoPoints = TRUE)

setFeatureInfo(gobject = g, x = featinfo)
```

