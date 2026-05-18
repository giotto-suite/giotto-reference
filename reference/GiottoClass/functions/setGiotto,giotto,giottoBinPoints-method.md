# `setGiotto,giotto,giottoBinPoints-method` {#setGiotto,giotto,giottoBinPoints-method}

*Package:* `GiottoClass`  
*Title:* Set giotto subobjects into giotto object
*Aliases:* `setGiotto`, `setGiotto,giotto,list-method`, `setGiotto,giotto,cellMetaObj-method`, `setGiotto,giotto,featMetaObj-method`, `setGiotto,giotto,exprObj-method`, `setGiotto,giotto,giottoPoints-method`, `setGiotto,giotto,giottoPolygon-method`, `setGiotto,giotto,dimObj-method`, `setGiotto,giotto,spatLocsObj-method`, `setGiotto,giotto,spatEnrObj-method`, `setGiotto,giotto,nnNetObj-method`, `setGiotto,giotto,spatialNetworkObj-method`, `setGiotto,giotto,giottoLargeImage-method`, `setGiotto,giotto,giottoImage-method`

## Description

Set giotto subobjects into giotto object

## Usage

```r
setGiotto,giotto,giottoBinPoints-method(gobject, x, ...)

setGiotto,giotto,list-method(gobject, x, verbose = TRUE, ...)

setGiotto,giotto,cellMetaObj-method(gobject, x, ...)

setGiotto,giotto,featMetaObj-method(gobject, x, ...)

setGiotto,giotto,exprObj-method(gobject, x, ...)

setGiotto,giotto,giottoPoints-method(gobject, x, ...)

setGiotto,giotto,giottoPolygon-method(gobject, x, ...)

setGiotto,giotto,dimObj-method(gobject, x, ...)

setGiotto,giotto,spatLocsObj-method(gobject, x, ...)

setGiotto,giotto,spatEnrObj-method(gobject, x, ...)

setGiotto,giotto,nnNetObj-method(gobject, x, ...)

setGiotto,giotto,spatialNetworkObj-method(gobject, x, ...)

setGiotto,giotto,giottoLargeImage-method(gobject, x, ...)

setGiotto,giotto,giottoImage-method(gobject, x, ...)
```

## Arguments

- `gobject`: giotto object
- `x`: giottoSubobject to set
- `...`: additional params to pass to specific Giotto setter functions
- `verbose`: be verbose

## Value

giottoSubobject

## See Also

Other functions to set data in giotto object: 
`[setCellMetadata]()`,
`[setDimReduction]()`,
`[setExpression]()`,
`[setFeatureInfo]()`,
`[setFeatureMetadata]()`,
`[setGiottoImage]()`,
`[setMultiomics]()`,
`[setNearestNetwork]()`,
`[setPolygonInfo]()`,
`[setSpatialEnrichment]()`,
`[setSpatialGrid]()`,
`[setSpatialLocations]()`,
`[setSpatialNetwork]()`,
`[set_multiomics]()`

## Examples

```r
g <- createGiottoObject()
g_expression <- GiottoData::loadSubObjectMini("exprObj")

setGiotto(gobject = g, x = g_expression)
```

