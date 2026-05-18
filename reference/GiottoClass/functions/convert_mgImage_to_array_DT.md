# `convert_mgImage_to_array_DT` {#convert_mgImage_to_array_DT}

*Package:* `GiottoClass`  
*Title:* convert_mgImage_to_array_DT

## Description

converts a magick image object to a data.table

## Usage

```r
convert_mgImage_to_array_DT(mg_object)
```

## Arguments

- `mg_object`: magick image or Giotto image object

## Value

data.table with image pixel information

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
g_image <- getGiottoImage(g, name = "image")
mgimg <- as(g_image, "giottoImage")

a <- convert_mgImage_to_array_DT(mgimg)
force(a)
force(a)
```

