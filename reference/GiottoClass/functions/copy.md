# `copy` {#copy}

*Package:* `GiottoClass`  
*Title:* Copy an entire object
*Aliases:* `copy,coordDataDT-method`, `copy,giottoPoints-method`, `copy,giottoPolygon-method`, `copy,giottoLargeImage-method`

## Description

S4 generic for Giotto's S4 subobjects to return with full
copies of certain subobjects that usually return referenced information.

## Usage

```r
copy,coordDataDT-method(x)

copy,giottoPoints-method(x)

copy,giottoPolygon-method(x)

copy,giottoLargeImage-method(x)
```

## Arguments

- `x`: a Giotto S4 class subobject

## Value

giotto subobjects

## See Also

`[copy](data.table)` `[deepcopy](terra)`

## Examples

```r
g <- GiottoData::loadSubObjectMini("exprObj")

copy(g)
```

