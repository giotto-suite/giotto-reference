# `setPolygonInfo` {#setPolygonInfo}

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
`[createGiottoPolygonsFromDfr]` details.

## See Also

Other polygon info data accessor functions: 
`[getPolygonInfo]()`

Other functions to set data in giotto object: 
`[setCellMetadata]()`,
`[setDimReduction]()`,
`[setExpression]()`,
`[setFeatureInfo]()`,
`[setFeatureMetadata]()`,
`[setGiotto,giotto,giottoBinPoints-method]`,
`[setGiottoImage]()`,
`[setMultiomics]()`,
`[setNearestNetwork]()`,
`[setSpatialEnrichment]()`,
`[setSpatialGrid]()`,
`[setSpatialLocations]()`,
`[setSpatialNetwork]()`,
`[set_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
polyinfo <- getPolygonInfo(g, return_giottoPolygon = TRUE)

setPolygonInfo(gobject = g, x = polyinfo)
```

