# `replace_bracket` {#replace_bracket}

*Package:* `GiottoClass`  
*Title:* Replace part of an object with [<-
*Aliases:* ``[<-``, `[<-,coordDataDT,missing,missing,ANY-method`, `[<-,coordDataDT,missing,missing,`, `ANY-method`, `[<-,coordDataDT,missing,missing-method`, `[<-,metaData,missing,missing,ANY-method`, `[<-,metaData,missing,missing,`, `[<-,metaData,missing,missing-method`, `[<-,dimObj,missing,missing,ANY-method`, `[<-,dimObj,missing,missing,`, `[<-,dimObj,missing,missing-method`, `[<-,exprData,missing,missing,ANY-method`, `[<-,exprData,missing,missing,`, `[<-,exprData,missing,missing-method`, `[<-,spatNetData,missing,missing,ANY-method`, `[<-,spatNetData,missing,missing,`, `[<-,spatNetData,missing,missing-method`, `[<-,nnData,missing,missing,ANY-method`, `[<-,nnData,missing,missing,`, `[<-,nnData,missing,missing-method`, `[<-,enrData,missing,missing,ANY-method`, `[<-,enrData,missing,missing,`, `[<-,enrData,missing,missing-method`, `[<-,spatGridData,missing,missing,ANY-method`, `[<-,spatGridData,missing,missing,`, `[<-,spatGridData,missing,missing-method`, `[<-,giottoPoints,missing,missing,ANY-method`, `[<-,giottoPoints,missing,missing,`, `[<-,giottoPoints,missing,missing-method`, `[<-,giottoPolygon,missing,missing,ANY-method`, `[<-,giottoPolygon,missing,missing,`, `[<-,giottoPolygon,missing,missing-method`, `[<-,giottoLargeImage,missing,missing,ANY-method`, `[<-,giottoImage,missing,missing,ANY-method`, `[<-,affine2d,missing,missing,ANY-method`, `[<-,affine2d,missing,missing,`, `[<-,affine2d,missing,missing-method`, `[<-,processParam,missing,missing,list-method`

## Description

Replace values from Giotto Classes. Providing empty brackets
such as `x[] <- value` will usually replace the entire contained data
representation.

## Usage

```r
[,coordDataDT,missing,missing,ANY-method(x, i, j) <- value

[,metaData,missing,missing,ANY-method(x, i, j) <- value

[,dimObj,missing,missing,ANY-method(x, i, j) <- value

[,exprData,missing,missing,ANY-method(x, i, j) <- value

[,spatNetData,missing,missing,ANY-method(x, i, j) <- value

[,nnData,missing,missing,ANY-method(x, i, j) <- value

[,enrData,missing,missing,ANY-method(x, i, j) <- value

[,spatGridData,missing,missing,ANY-method(x, i, j) <- value

[,giottoPoints,missing,missing,ANY-method(x, i, j) <- value

[,giottoPolygon,missing,missing,ANY-method(x, i, j) <- value

[,giottoLargeImage,missing,missing,ANY-method(x, i, j) <- value

[,giottoImage,missing,missing,ANY-method(x, i, j) <- value

[,affine2d,missing,missing,ANY-method(x, i, j) <- value

[,processParam,missing,missing,list-method(x, i, j) <- value
```

## Arguments

- `x`: Giotto S4 object to replace information in
- `i, j`: indices specifying elements to replace. Indices are numeric or
character vectors or empty
- `value`: values(s) to set

## Value

same as `x`

## See Also

[subset_bracket] [subset_dollar] [replace_dollar]

## Examples

```r
gpoints <- GiottoData::loadSubObjectMini("giottoPoints")

gpoints[] <- gpoints[]
```

