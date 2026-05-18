# `gg_annotation_raster` {#gg_annotation_raster}

*Package:* `GiottoVisuals`  
*Title:* Append image to ggplot as annotation_raster
*Aliases:* `gg_annotation_raster,ggUnionClass,list-method`, `gg_annotation_raster,ggUnionClass,giottoImage-method`, `gg_annotation_raster,ggUnionClass,giottoLargeImage-method`, `gg_annotation_raster,ggUnionClass,giottoAffineImage-method`

## Description

Add a spatially mapped image to a *ggplot2* `gg` object.
For terra-based images, the image will be a cropped and sampled version
of the full size image on disk that has sufficient resolution for the size
of the plot requested.

## Usage

```r
gg_annotation_raster,ggUnionClass,list-method(ggobj, gimage, ext = NULL, geom_blank = TRUE, ...)

gg_annotation_raster,ggUnionClass,giottoImage-method(ggobj, gimage, ext = NULL, geom_blank = TRUE, ...)

gg_annotation_raster,ggUnionClass,giottoLargeImage-method(ggobj, gimage, ext = NULL, geom_blank = TRUE, ...)

gg_annotation_raster,ggUnionClass,giottoAffineImage-method(ggobj, gimage, ext = NULL, geom_blank = TRUE, ...)
```

## Arguments

- `ggobj`: ggplot2 `gg` object
- `gimage`: `giottoLargeImage`, `giottoImage` or `list` thereof
- `ext`: Object that responds to `ext()`. Defines the plot spatial ROI
This extent defines which portions of the image(s) will be plotted/should
be sampled for. The default is the same extent as the image.
- `geom_blank`: logical. Whether to apply [ggplot2::geom_blank()] to the
`gg` object so that the image can be plotted by itself.
- `...`: additional params to pass

## Value

`gg` object with images to plot appended as annotation rasters

## Details

No ... params are implemented for `giottoImage`.   
 ... params for
`giottoLargeImage` and `giottoAffineImage` pass to `?auto_image_resample`

## Examples

```r
gimg <- GiottoData::loadSubObjectMini("giottoLargeImage")
gg <- ggplot2::ggplot()
out <- GiottoVisuals::gg_annotation_raster(gg, gimg)
print(out)
```

