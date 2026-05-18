# `dimnames` {#dimnames}

*Package:* `GiottoClass`  
*Title:* Dimnames of an object
*Aliases:* `dimnames,giotto-method`, `dimnames,exprObj-method`, `dimnames,dimObj-method`, `dimnames,spatLocsObj-method`, `dimnames,metaData-method`, `dimnames,enrData-method`

## Description

Retrieve or set the dimnames of an object

## Usage

```r
dimnames,giotto-method(x)

dimnames,exprObj-method(x)

dimnames,dimObj-method(x)

dimnames,spatLocsObj-method(x)

dimnames,metaData-method(x)

dimnames,enrData-method(x)

dimnames,dimObj-method(x)
```

## Arguments

- `x`: object

## Value

character

## Examples

```r
g <- GiottoData::loadSubObjectMini("exprObj")

dimnames(g)
```

