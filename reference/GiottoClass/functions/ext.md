# `ext` {#ext}

*Package:* `GiottoClass`  
*Title:* Get a SpatExtent
*Aliases:* `ext<-`, `ext,spatLocsObj-method`, `ext,giottoPolygon-method`, `ext,giottoPoints-method`, `ext,spatialNetworkObj-method`, `ext,giottoLargeImage-method`, `ext,giottoImage-method`, `ext,giotto-method`, `ext,giottoAffineImage-method`, `ext,affine2d-method`, `ext<-,spatLocsObj,SpatExtent-method`, `ext<-,spatialNetworkObj,SpatExtent-method`, `ext<-,giottoPoints,SpatExtent-method`, `ext<-,giottoPolygon,SpatExtent-method`, `ext<-,giottoLargeImage,SpatExtent-method`, `ext<-,giottoAffineImage,SpatExtent-method`, `ext<-,ANY,ANY-method`, `ext<-,giottoImage,SpatExtent-method`, `ext<-,affine2d,ANY-method`

## Description

Get a SpatExtent of an object. This is the spatial minmax x
and y that the object is mapped to.

## Usage

```r
ext,spatLocsObj-method(x, ...)

ext,giottoPolygon-method(x, ...)

ext,giottoPoints-method(x, ...)

ext,spatialNetworkObj-method(x, ...)

ext,giottoLargeImage-method(x, ...)

ext,giottoImage-method(x, ...)

ext,giotto-method(
  x,
  spat_unit = ":all:",
  feat_type = ":all:",
  all_data = TRUE,
  prefer = c("polygon", "spatlocs", "points", "images"),
  name = list(spatlocs = ":all:"),
  verbose = NULL,
  ...
)

ext,giottoAffineImage-method(x, ...)

ext,affine2d-method(x, ...)

ext,spatLocsObj,SpatExtent-method(x) <- value

ext,spatialNetworkObj,SpatExtent-method(x) <- value

ext,giottoPoints,SpatExtent-method(x) <- value

ext,giottoPolygon,SpatExtent-method(x) <- value

ext,giottoLargeImage,SpatExtent-method(x) <- value

ext,giottoAffineImage,SpatExtent-method(x) <- value

ext,ANY,ANY-method(x) <- value

ext,giottoImage,SpatExtent-method(x) <- value

ext,affine2d,ANY-method(x) <- value
```

## Arguments

- `x`: spatial object
- `...`: additional params to pass
- `spat_unit`: character. Spatial unit to limit search to. If not provided,
a default will be set.
- `feat_type`: character. Feature type to limit search to for "points"
information. If not provided, a default will be set.
- `all_data`: logical. When TRUE (default), all spatial information
designated by `prefer` will be searched and a combined `SpatExtent` will be
returned. When FALSE, only the `SpatExtent` of the first existing data as
ordered by `prefer` will be returned.
- `prefer`: character vector. Order of preferred data to get extent from.
allowed terms are "polygon", "spatlocs", "points", "images". This is also the
default ordering. Omitting terms removes them from the search.
- `name`: named list. Specific object names to check. List names should
correspond to allowed terms in `prefer`. More than one name is allowed for
only "images" at the moment, which produces a combined `SpatExtent`
- `verbose`: be verbose
- `value`: value to set. Accepts any object that `ext()` will work on

## Value

SpatExtent

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
# giotto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ext(g) # defaults to checking first giottoPolygon extent
ext(g, prefer = "spatlocs") # check first spatLocsObj extent
# first spatLocsObj from a different spat_unit
ext(g, spat_unit = "aggregate", prefer = "spatlocs")

# from first image object
ext(g, prefer = "image")

# add a dummy image with different spatial extent
r <- terra::rast(array(seq(25), dim = c(5, 5)))
test <- createGiottoLargeImage(r)
ext(test) <- c(1e5, 1.1e5, 0, 10)
g <- setGiotto(g, test) # add image

# combined from all image objects
ext(g, prefer = "image", name = list(images = list_images_names(g)))

# combined from all spatial data types in giotto object
ext(g, all_data = TRUE, name = list(images = list_images_names(g)))

# spatLocsObj %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sl <- getSpatialLocations(g)
ext(sl)

# giottoPolygon %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# get extent
gpoly <- getPolygonInfo(g, return_giottoPolygon = TRUE)
ext(gpoly)

# set extent
plot(gpoly) # before
ext(gpoly) <- ext(0, 20, 30, 60)
plot(gpoly) # after

# giottoPoints %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# get extent
gpoints <- getFeatureInfo(g, return_giottoPoints = TRUE)
ext(gpoints)

# set extent
plot(gpoints) # before
ext(gpoints) <- ext(0, 2000, 3000, 6000)
plot(gpoints) # after
```

