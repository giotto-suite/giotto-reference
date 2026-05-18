# `getSpatialLocations` {#getSpatialLocations}

*Package:* `GiottoClass`  
*Title:* Get spatial locations

## Description

Function to get a spatial location data.table

## Usage

```r
getSpatialLocations(
  gobject,
  spat_unit = NULL,
  name = NULL,
  output = c("spatLocsObj", "data.table"),
  copy_obj = TRUE,
  verbose = TRUE,
  set_defaults = TRUE,
  simplify = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `spat_unit`: spatial unit (e.g. "cell")
- `name`: name of spatial
locations (defaults to first name in spatial_locs slot, e.g. "raw")
- `output`: what object type to get the spatial locations as. Default is as
a 'spatLocsObj'. Returning as 'data.table' is also possible.
- `copy_obj`: whether to copy/duplicate when getting the
object (default = TRUE)
- `verbose`: be verbose
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.
- `simplify`: logical. Whether or not to take object out of a list when
there is a length of 1.

## Value

data.table with coordinates or spatLocsObj depending on `output`

## See Also

Other spatial location data accessor functions: 
`[setSpatialLocations]()`

Other functions to get data from giotto object: 
`[getCellMetadata]()`,
`[getDimReduction]()`,
`[getExpression]()`,
`[getFeatureInfo]()`,
`[getFeatureMetadata]()`,
`[getGiottoImage]()`,
`[getMultiomics]()`,
`[getNearestNetwork]()`,
`[getPolygonInfo]()`,
`[getSpatialEnrichment]()`,
`[getSpatialGrid]()`,
`[getSpatialNetwork]()`,
`[get_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

getSpatialLocations(g)
```

