# `row-plus-colnames-generic` {#row-plus-colnames-generic}

*Package:* `GiottoClass`  
*Title:* Row and column names
*Aliases:* `colnames`, `rownames`, `colnames,giotto-method`, `colnames,exprObj-method`, `colnames,cellMetaObj-method`, `colnames,featMetaObj-method`, `colnames,spatEnrObj-method`, `colnames,spatLocsObj-method`, `colnames,dimObj-method`, `rownames,giotto-method`, `rownames,exprObj-method`, `rownames,dimObj-method`, `rownames,metaData-method`

## Description

Retrieve or set the row or column names of an object

## Usage

```r
colnames,giotto-method(x)

colnames,exprObj-method(x)

colnames,cellMetaObj-method(x)

colnames,featMetaObj-method(x)

colnames,spatEnrObj-method(x)

colnames,spatLocsObj-method(x)

colnames,dimObj-method(x)

rownames,giotto-method(x)

rownames,exprObj-method(x)

rownames,dimObj-method(x)

rownames,metaData-method(x)
```

## Arguments

- `x`: object

## Value

A character vector of row or col names

## Examples

```r
g <- GiottoData::loadSubObjectMini("exprObj")

colnames(g)
```

