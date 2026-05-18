# `rbind2,giottoBinPoints,giottoBinPoints-method` {#rbind2,giottoBinPoints,giottoBinPoints-method}

*Package:* `GiottoClass`  
*Title:* Combine objects by rows (Giotto-related)
*Aliases:* `rbind-generic`, `rbind2,cellMetaObj,cellMetaObj-method`, `rbind2,featMetaObj,featMetaObj-method`, `rbind2,spatLocsObj,spatLocsObj-method`, `rbind2,giottoPolygon,giottoPolygon-method`, `rbind2,giottoPoints,giottoPoints-method`, `rbind2,overlapPointDT,overlapPointDT-method`

## Description

row bind two objects

## Usage

```r
rbind2,giottoBinPoints,giottoBinPoints-method(x, y, ...)

rbind2,cellMetaObj,cellMetaObj-method(x, y, ...)

rbind2,featMetaObj,featMetaObj-method(x, y, ...)

rbind2,spatLocsObj,spatLocsObj-method(x, y, ...)

rbind2,giottoPolygon,giottoPolygon-method(x, y, add_list_ID = TRUE, ...)

rbind2,giottoPoints,giottoPoints-method(x, y, ...)

rbind2,overlapPointDT,overlapPointDT-method(x, y, ...)
```

## Arguments

- `x`: item 1 to rbind
- `y`: item 2 to rbind
- `...`: additional params to pass to methods
- `add_list_ID`: whether to generate a list_ID column when giottoPolygons
to append have different names

## Value

object with appended rows

## Examples

```r
g <- GiottoData::loadSubObjectMini("giottoPolygon")

rbind2(g, g)
```

