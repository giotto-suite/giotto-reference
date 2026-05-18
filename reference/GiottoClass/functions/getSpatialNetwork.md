# `getSpatialNetwork` {#getSpatialNetwork}

*Package:* `GiottoClass`  
*Title:* Get spatial network

## Description

Function to get a spatial network

## Usage

```r
getSpatialNetwork(
  gobject,
  spat_unit = NULL,
  name = NULL,
  output = c("spatialNetworkObj", "networkDT", "networkDT_before_filter", "outputObj"),
  set_defaults = TRUE,
  copy_obj = TRUE,
  verbose = TRUE,
  simplify = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `spat_unit`: spatial unit (e.g. "cell")
- `name`: name of spatial network
- `output`: object type to return as. Options:
'spatialNetworkObj' (default),
'networkDT' and 'networkDT_before_filter' for data.table outputs.
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.
- `copy_obj`: whether to copy/duplicate when getting the
object (default = TRUE)
- `verbose`: be verbose
- `simplify`: logical. Whether or not to take object out of a list when
there is a length of 1.

## Value

spatialNetworkObj of data.table

## See Also

Other spatial network data accessor functions: 
`[setSpatialNetwork]()`

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
`[getSpatialLocations]()`,
`[get_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

getSpatialNetwork(g)
```

