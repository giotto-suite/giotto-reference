# `setPolygonInfo`

*Package:* `GiottoClass`  
*Title:* Set polygon info

## Description

Set polygon information into Giotto object

## Usage

```r
setPolygonInfo(
  gobject,
  x,
  name = "cell",
  centroids_to_spatlocs = FALSE,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: single object or named list of objects to set as polygon
information (see details)
- `name`: (optional, character) name to assign to polygon and spatial unit
that polygon might define. Only used for single giottoPolygon objects. Names
are taken from a named list for multiple polygons.
- `centroids_to_spatlocs`: if centroid information is discovered, whether
to additionally set them as a set of spatial locations (default = FALSE)
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## Details

Inputs can be provided as either single objects or named lists of
objects. If the list is not named, then a generic name of the template
'cell_i' will be applied.   

If an input is a character string, then it is assumed that it is a
filepath.   

For required formatting when reading tabular data or objects, see
[`createGiottoPolygonsFromDfr`](createGiottoPolygon.md) details.

## See Also

Other polygon info data accessor functions: 
[`getPolygonInfo()`](getPolygonInfo.md)

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
[`setSpatialEnrichment()`](setSpatialEnrichment.md),
[`setSpatialGrid()`](setSpatialGrid.md),
[`setSpatialLocations()`](setSpatialLocations.md),
[`setSpatialNetwork()`](setSpatialNetwork.md),
[`set_multiomics()`](set_multiomics.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
polyinfo <- getPolygonInfo(g, return_giottoPolygon = TRUE)

setPolygonInfo(gobject = g, x = polyinfo)
```

