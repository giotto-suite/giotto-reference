# `getGiottoImage` {#getGiottoImage}

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
`[showGiottoImageNames]` to get

## Value

a giotto image object

## See Also

Other image data accessor functions: 
`[setGiottoImage]()`

Other functions to get data from giotto object: 
`[getCellMetadata]()`,
`[getDimReduction]()`,
`[getExpression]()`,
`[getFeatureInfo]()`,
`[getFeatureMetadata]()`,
`[getMultiomics]()`,
`[getNearestNetwork]()`,
`[getPolygonInfo]()`,
`[getSpatialEnrichment]()`,
`[getSpatialGrid]()`,
`[getSpatialLocations]()`,
`[getSpatialNetwork]()`,
`[get_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

getGiottoImage(gobject = g)
```

