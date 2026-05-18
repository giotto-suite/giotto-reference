# `wrap` {#wrap}

*Package:* `GiottoClass`  
*Title:* Wrap giotto terra pointer information
*Aliases:* `vect`, `wrap,giottoPolygon-method`, `wrap,giotto-method`, `wrap,giottoPoints-method`, `vect,packedGiottoPolygon-method`, `vect,packedGiottoPoints-method`, `vect,packedGiotto-method`

## Description

Extension of wrap methods from terra for Giotto's terra-based S4
objects. Allows pointer information to be packaged into memory so that it can
be passed over a connection (e.g. nodes on a computer cluster)

## Usage

```r
wrap,giottoPolygon-method(x)

wrap,giotto-method(x)

wrap,giottoPoints-method(x)

vect,packedGiottoPolygon-method(x)

vect,packedGiottoPoints-method(x)

vect,packedGiotto-method(x)
```

## Arguments

- `x`: giottoPolygon or giottoPoints

## Value

wrapped giottoPolygon or giottoPoints

## Examples

```r
g <- GiottoData::loadSubObjectMini("giottoPoints")

wrap(g)
```

