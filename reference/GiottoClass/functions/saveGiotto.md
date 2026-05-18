# `saveGiotto` {#saveGiotto}

*Package:* `GiottoClass`  
*Title:* saveGiotto

## Description

Saves a Giotto object to a specific folder structure

## Usage

```r
saveGiotto(
  gobject,
  foldername = "saveGiottoDir",
  dir = getwd(),
  method = c("RDS", "qs"),
  method_params = list(),
  overwrite = FALSE,
  export_image = TRUE,
  image_filetype = "PNG",
  include_feat_coord = TRUE,
  verbose = TRUE,
  ...
)
```

## Arguments

- `gobject`: Giotto object
- `foldername`: Folder name
- `dir`: Directory where to create the folder
- `method`: method to save main object
- `method_params`: additional method parameters for RDS or qs
- `overwrite`: Overwrite existing folders
- `export_image`: logical. Write out an image of the format specified by
`image_filetype` when saving a `giottoLargeImage`.
Future image loads and reconnects will point to this new file.
- `image_filetype`: the image filetype to use, see
`[writeRaster](terra)`. Default is "PNG". For TIFF outputs, try
"COG"
- `include_feat_coord`: logical. Whether to keep the feature coordinates
when saving. Dropping them can improve performance for large datasets.
- `verbose`: be verbose
- `...`: additional parameters for `[writeRaster](terra)`

## Value

Creates a directory with Giotto object information

## Details

Works together with `[loadGiotto]` to save and re-load
Giotto objects. Additional method_params need to be provided as a list
and will go to `[saveRDS](base)` or `[qsave](qs)`

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

saveGiotto(gobject = g, dir = tempdir(), overwrite = TRUE)
```

