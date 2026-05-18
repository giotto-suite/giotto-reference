# `[,giottoBinPoints,logical,missing,missing-method` {#[,giottoBinPoints,logical,missing,missing-method}

*Package:* `GiottoClass`  
*Title:* Subset part of an object with `[` or `[[`
*Aliases:* `subset_bracket`, ``[`,`, ``[[``, `[,gdtData,gIndex,gIndex,missing-method`, `[,gdtData,logical,missing,missing-method`, `[,gdtData,character,missing,missing-method`, `[,gdtData,missing,numeric,missing-method`, `[,gdtData,missing,logical,missing-method`, `[,coordDataDT,ANY,ANY,missing-method`, `[,coordDataDT,missing,ANY,missing-method`, `[,coordDataDT,missing,character,missing-method`, `[,coordDataDT,ANY,missing,missing-method`, `[,coordDataDT,missing,missing,missing-method`, `[,giottoPoints,gIndex,missing,missing-method`, `[,metaData,missing,ANY,missing-method`, `[,metaData,missing,character,missing-method`, `[,metaData,ANY,missing,missing-method`, `[,metaData,missing,missing,missing-method`, `[,dimObj,ANY,ANY,missing-method`, `[,dimObj,missing,missing,missing-method`, `[,exprData,missing,ANY,missing-method`, `[,exprData,ANY,missing,missing-method`, `[,exprData,ANY,ANY,missing-method`, `[,exprData,missing,missing,missing-method`, `[,spatNetData,missing,missing,missing-method`, `[,nnData,missing,missing,missing-method`, `[,enrData,missing,missing,missing-method`, `[,enrData,ANY,missing,missing-method`, `[,enrData,missing,ANY,missing-method`, `[,enrData,missing,character,missing-method`, `[,spatGridData,missing,missing,missing-method`, `[,giottoPoints,missing,missing,missing-method`, `[,giottoPoints,character,missing,missing-method`, `[,giottoPoints,missing,gIndex,missing-method`, `[,giottoPolygon,missing,missing,missing-method`, `[,giottoPolygon,gIndex,missing,missing-method`, `[,giottoPolygon,character,missing,missing-method`, `[,giottoPolygon,missing,gIndex,missing-method`, `[,terraVectData,gIndex,gIndex,missing-method`, `[,giottoLargeImage,missing,missing,missing-method`, `[[,giottoLargeImage,gIndex,missing-method`, `[,giottoImage,missing,missing,missing-method`, `[,affine2d,missing,missing,missing-method`, `[,processParam,missing,missing,missing-method`

## Description

Extract values from Giotto classes. Providing empty brackets
such as: `x[]` will usually extract the main contained data representation.

## Usage

```r
[,giottoBinPoints,logical,missing,missing-method(x, i, j, compact = "auto", ..., drop)

[,gdtData,gIndex,gIndex,missing-method(x, i, j)

[,gdtData,logical,missing,missing-method(x, i, j)

[,gdtData,character,missing,missing-method(x, i, j)

[,gdtData,missing,numeric,missing-method(x, i, j)

[,gdtData,missing,logical,missing-method(x, i, j)

[,coordDataDT,ANY,ANY,missing-method(x, i, j)

[,coordDataDT,missing,ANY,missing-method(x, i, j)

[,coordDataDT,missing,character,missing-method(x, i, j)

[,coordDataDT,ANY,missing,missing-method(x, i, j)

[,coordDataDT,missing,missing,missing-method(x, i, j)

[,giottoPoints,gIndex,missing,missing-method(x, i, j)

[,metaData,missing,ANY,missing-method(x, i, j)

[,metaData,missing,character,missing-method(x, i, j)

[,metaData,ANY,missing,missing-method(x, i, j)

[,metaData,missing,missing,missing-method(x, i, j)

[,dimObj,ANY,ANY,missing-method(x, i, j)

[,dimObj,missing,missing,missing-method(x, i, j)

[,exprData,missing,ANY,missing-method(x, i, j)

[,exprData,ANY,missing,missing-method(x, i, j)

[,exprData,ANY,ANY,missing-method(x, i, j)

[,exprData,missing,missing,missing-method(x, i, j)

[,spatNetData,missing,missing,missing-method(x, i, j)

[,nnData,missing,missing,missing-method(x, i, j)

[,enrData,missing,missing,missing-method(x, i, j)

[,enrData,ANY,missing,missing-method(x, i, j)

[,enrData,missing,ANY,missing-method(x, i, j)

[,enrData,missing,character,missing-method(x, i, j)

[,spatGridData,missing,missing,missing-method(x, i, j)

[,giottoPoints,missing,missing,missing-method(x, i, j)

[,giottoPoints,gIndex,missing,missing-method(x, i, j)

[,giottoPoints,character,missing,missing-method(x, i, j)

[,giottoPoints,missing,gIndex,missing-method(x, i, j)

[,giottoPolygon,missing,missing,missing-method(x, i, j)

[,giottoPolygon,gIndex,missing,missing-method(x, i, j)

[,giottoPolygon,character,missing,missing-method(x, i, j)

[,giottoPolygon,missing,gIndex,missing-method(x, i, j)

[,terraVectData,gIndex,gIndex,missing-method(x, i, j)

[,giottoLargeImage,missing,missing,missing-method(x, i, j)

[[,giottoLargeImage,gIndex,missing-method(x, i, j, ...)

[,giottoImage,missing,missing,missing-method(x, i, j)

[,affine2d,missing,missing,missing-method(x, i, j)

[,processParam,missing,missing,missing-method(x, i, j)
```

## Arguments

- `x`: Giotto S4 object to subset information from
- `i, j`: indices specifying elements to extract. Indices are numeric or
character vectors, or empty
- `compact`: `character` or `logical` (default = "auto"). Whether to
compact object. See giottoBinPoints. `"auto"` will perform a
compaction when number of spatial points referenced in @counts is 1/10 of
that existing in @spatial
- `...`: additional arguments

## Value

Same as `x` unless brackets are empty in which case, the main
internal representation is returned.

## See Also

[replace_bracket] [subset_dollar] [replace_dollar]

## Examples

```r
gpoints <- GiottoData::loadSubObjectMini("giottoPoints")

# extract contained `SpatVector`
gpoints[]

# subset by feature
gpoints[c("Mlc1", "Gfap")]

# subset by feature and colname
gpoints["Mlc1", c("feat_ID", "feat_ID_uniq")]

# subset by index
gpoints[seq(20)]
```

