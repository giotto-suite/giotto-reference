# `getPolygonInfo` {#getPolygonInfo}

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
`[setPolygonInfo]()`

Other functions to get data from giotto object: 
`[getCellMetadata]()`,
`[getDimReduction]()`,
`[getExpression]()`,
`[getFeatureInfo]()`,
`[getFeatureMetadata]()`,
`[getGiottoImage]()`,
`[getMultiomics]()`,
`[getNearestNetwork]()`,
`[getSpatialEnrichment]()`,
`[getSpatialGrid]()`,
`[getSpatialLocations]()`,
`[getSpatialNetwork]()`,
`[get_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

getPolygonInfo(g)
```

