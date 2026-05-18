# `setSpatialLocations` {#setSpatialLocations}

*Package:* `GiottoClass`  
*Title:* Set spatial locations

## Description

Function to set a spatial location slot

## Usage

```r
setSpatialLocations(
  gobject,
  x,
  spat_unit = NULL,
  name = "raw",
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: spatLocsObj or list of spatLocsObj. Passing NULL will remove a
specified set of spatial locations data.
- `spat_unit`: spatial unit (e.g. "cell")
- `name`: name of spatial locations, default "raw"
- `provenance`: provenance information (optional)
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## Details

Spatial information will be set to the nested location described
by their tagged spat_unit and name information. An alternative location can
also be specified through the respective params in this function.

## See Also

Other spatial location data accessor functions: 
`[getSpatialLocations]()`

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
`[setPolygonInfo]()`,
`[setSpatialEnrichment]()`,
`[setSpatialGrid]()`,
`[setSpatialNetwork]()`,
`[set_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
x <- getSpatialLocations(g, output = "data.table")
sl <- data.frame(cell_ID = x$cell_ID, sdimx = rnorm(624), sdimy = rnorm(624))

setSpatialLocations(gobject = g, x = createSpatLocsObj(sl, name = "raw"))
```

