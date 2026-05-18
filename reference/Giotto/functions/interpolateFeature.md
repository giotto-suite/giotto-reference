# `interpolateFeature` {#interpolateFeature}

*Package:* `Giotto`  
*Title:* Spatial feature interpolation
*Aliases:* `interpolateFeature,giotto,missing-method`, `interpolateFeature,spatLocsObj,data.frame-method`

## Description

Spatial feature interpolation

## Usage

```r
interpolateFeature,giotto,missing-method(
  x,
  spat_unit = NULL,
  feat_type = NULL,
  feats,
  spatvalues_params = list(),
  spat_loc_name = "raw",
  ext = NULL,
  buffer = 50,
  name_fmt = "%s",
  savedir = file.path(getwd(), "interp_rasters"),
  overwrite = FALSE,
  verbose = NULL,
  ...
)

interpolateFeature,spatLocsObj,data.frame-method(
  x,
  y,
  ext = NULL,
  buffer = 50,
  rastersize = 500,
  name_fmt = "%s",
  savedir = file.path(getwd(), "interp_rasters"),
  overwrite = FALSE,
  ...
)
```

## Arguments

- `x`: object containing coordinates to use interpolation with
- `spat_unit`: (optional) spatial unit to use
- `feat_type`: (optional) feature type to use
- `feats`: character vector. Features to interpolate from the `giotto`
object
- `spatvalues_params`: list. Additional list of parameters to pass to
[spatValues()] to help with data retrieval from `giotto` object
- `spat_loc_name`: character. Name of spatial locations to use. Values to
be interpolated are spatially mapped to these locations by cell_ID.
- `ext`: `SpatExtent`. (optional) extent across which to apply the
interpolation. If not provided, will default to the extent of the spatLocsObj
expanded by the value of `buffer`. It can be helpful to set this as the
extent of any polygons that will be used in aggregation.
- `buffer`: numeric. (optional) default buffer to expand derived extent by
if `ext` is not provided.
- `name_fmt`: character. sprintf fmt to apply to `feats` when naming the
resulting interpolation `giottoLargeImage` objects. Default is no change.
- `savedir`: character. Output directory. Default is a new `interp_rasters`
folder in working directory.
- `overwrite`: logical. Whether raster outputs should be overwritten if
the same `filename` is provided.
- `verbose`: be verbose
- `...`: additional params to pass downstream methods
- `y`: data.frame-like. Values for interpolation. Must also have a
`cell_ID` column and that matches with `x`.
- `rastersize`: numeric. Length of major axis in px of interpolation
raster to create.

## Value

`giotto` method returns a `giotto` object with newly made appended
feature interpolation rasters as `giottoLargeImages`

## Details

The data.frame method returns a `giottoLargeImage` linked to an interpolated
raster that is written to disk as GeoTIFF.

