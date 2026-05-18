# `addGiottoPolygons` {#addGiottoPolygons}

*Package:* `GiottoClass`  
*Title:* Add giotto polygons to giotto object

## Description

Adds Giotto polygon to an existing Giotto object

## Usage

```r
addGiottoPolygons(gobject, gpolygons)
```

## Arguments

- `gobject`: giotto object
- `gpolygons`: list of giotto polygon objects,
see `[createGiottoPolygonsFromMask]`
and `[createGiottoPolygonsFromDfr]`

## Value

giotto object

## Examples

```r
x <- GiottoData::loadSubObjectMini("giottoPolygon")
g <- createGiottoObject()

g <- addGiottoPolygons(gobject = g, gpolygons = list(x))
```

