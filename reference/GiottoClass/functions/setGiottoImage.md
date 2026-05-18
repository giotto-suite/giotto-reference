# `setGiottoImage` {#setGiottoImage}

*Package:* `GiottoClass`  
*Title:* Set giotto image object

## Description

Directly attach a giotto image to giotto object

## Usage

```r
setGiottoImage(
  gobject,
  image,
  image_type = NULL,
  name = NULL,
  initialize = FALSE,
  verbose = NULL
)
```

## Arguments

- `gobject`: giotto object
- `image`: giotto image object to be attached without modification to the
giotto object
- `image_type`: deprecated
- `name`: name of giotto image object
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `verbose`: be verbose

## Value

giotto object

## Details

***Use with care!*** This function directly attaches
giotto image objects to the gobject without further modifications of
spatial positioning values within the image object that are generally
needed in order for them to plot in the correct location relative to the
other modalities of spatial data.   
 For the more general-purpose method
of attaching image objects, see `[addGiottoImage]`

## See Also

`[addGiottoImage]`

Other image data accessor functions: 
`[getGiottoImage]()`

Other functions to set data in giotto object: 
`[setCellMetadata]()`,
`[setDimReduction]()`,
`[setExpression]()`,
`[setFeatureInfo]()`,
`[setFeatureMetadata]()`,
`[setGiotto,giotto,giottoBinPoints-method]`,
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
g <- GiottoData::loadGiottoMini("vizgen")
gimg <- getGiottoImage(gobject = g)

setGiottoImage(g, NULL, name = objName(gimg))
setGiottoImage(gobject = g, image = gimg)
```

