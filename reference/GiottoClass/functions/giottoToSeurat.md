# `giottoToSeurat`

*Package:* `GiottoClass`  
*Title:* Deprecated

## Description

Deprecated. Please use either [giottoToSeuratV4](giottoToSeuratV4.md) or
[giottoToSeuratV5](giottoToSeuratV5.md)

## Usage

```r
giottoToSeurat(gobject, spat_unit = NULL, obj_use = NULL, ...)
```

## Arguments

- `gobject`: Giotto object
- `spat_unit`: spatial unit (e.g. 'cell')
- `obj_use`: Giotto object (deprecated, use gobject)
- `...`: additional params to pass to [`getSpatialLocations`](getSpatialLocations.md)

## Value

Seurat object

