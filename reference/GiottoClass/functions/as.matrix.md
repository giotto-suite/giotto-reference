# `as.matrix` {#as.matrix}

*Package:* `GiottoClass`  
*Title:* Coerce to matrix
*Aliases:* `as.matrix,spatLocsObj-method`, `as.matrix,overlapPointDT-method`, `as.matrix,overlapIntensityDT-method`, `as.matrix,nnNetObj-method`

## Description

Coerce to matrix

## Usage

```r
as.matrix,spatLocsObj-method(x, id_rownames = TRUE, ...)

as.matrix,overlapPointDT-method(x, feat_count_column = NULL, ...)

as.matrix,overlapIntensityDT-method(x, ...)

as.matrix,nnNetObj-method(x, attr = NULL, ...)
```

## Arguments

- `x`: object to coerce
- `id_rownames`: logical. Retain the spatial IDs as the rownames
- `...`: additional params to pass (none implemented)
- `feat_count_column`: character. If provided, column in overlaps info
that contains count information to take into account when generating matrix.
This is important when point detections represent more than one count.
- `attr`: Either NULL or `character` providing the name of an edge
attribute to include in the ajacency matrix. The edge attribute to use must
be either `logical` or `numeric`.

## Value

matrix

## See Also

Other As coercion functions: 
`[as.data.table.giottoBinPoints]()`,
`[as.points]()`,
`[as.polygons]()`,
`[r_spatial_conversions]`

## Examples

```r
sl <- GiottoData::loadSubObjectMini("spatLocsObj")
m <- as.matrix(sl)
```

