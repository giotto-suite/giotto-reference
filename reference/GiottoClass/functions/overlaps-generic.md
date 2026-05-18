# `overlaps-generic` {#overlaps-generic}

*Package:* `GiottoClass`  
*Title:* overlaps-generic
*Aliases:* `overlaps`, `overlaps,giottoPolygon-method`

## Description

Access list of overlaps information from object

## Usage

```r
overlaps,giottoPolygon-method(x, name = NULL)
```

## Arguments

- `x`: object
- `name`: (optional) name of overlaps information to retrieve

## Value

list of overlaps from object

## Examples

```r
g <- GiottoData::loadSubObjectMini("giottoPolygon")

overlaps(g)
```

