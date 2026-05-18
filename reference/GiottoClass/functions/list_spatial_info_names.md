# `list_spatial_info_names` {#list_spatial_info_names}

*Package:* `GiottoClass`  
*Title:* list_spatial_info_names

## Description

return the available names for giotto spatial polygon
information

## Usage

```r
list_spatial_info_names(gobject)
```

## Arguments

- `gobject`: giotto object

## Value

vector with names of available spatial polygon information

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

list_spatial_info_names(g)
```

