# `list_spatial_info` {#list_spatial_info}

*Package:* `GiottoClass`  
*Title:* list_spatial_info

## Description

return the available giotto spatial polygon information

## Usage

```r
list_spatial_info(gobject)
```

## Arguments

- `gobject`: giotto object

## Value

names of available spatial polygon information

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

list_spatial_info(g)
```

