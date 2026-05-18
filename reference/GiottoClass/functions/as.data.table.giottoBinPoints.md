# `as.data.table.giottoBinPoints` {#as.data.table.giottoBinPoints}

*Package:* `GiottoClass`  
*Title:* Coerce to data.table
*Aliases:* `as.data.table`, `as.data.table.SpatVector`, `as.data.table.giottoPolygon`, `as.data.table.giottoPoints`, `as.data.frame.overlapPointDT`, `as.data.frame.overlapIntensityDT`

## Description

Coerce to data.table if possible

## Usage

```r
as.data.table.giottoBinPoints(x, geom, ...)

as.data.table.SpatVector(
  x,
  keep.rownames = FALSE,
  geom = NULL,
  include_values = TRUE,
  geomtype,
  ...
)

as.data.table.giottoPolygon(x, ...)

as.data.table.giottoPoints(x, ...)

as.data.frame.overlapPointDT(x, ...)

as.data.frame.overlapIntensityDT(x, ...)
```

## Arguments

- `x`: The object to coerce
- `geom`: character or NULL. If not NULL, either "XY", "WKT", or "HEX", to
get the geometry included in coordinates of each point or vertex,
Well-Known-Text or hexadecimal notation.
- `...`: additional arguments to pass
- `keep.rownames`: This argument is ignored
- `include_values`: whether to include attributes information when geom
is 'XY'
- `geomtype`: character (optional). One of "points" or "polygons".
Fallback geomtype used when it is not possible for {terra} to determine
the type of geometry an object is.
(commonly seen when nrow of the object = 0)

## Value

data.table

## See Also

Other As coercion functions: 
`[as.matrix]()`,
`[as.points]()`,
`[as.polygons]()`,
`[r_spatial_conversions]`

## Examples

```r
g <- GiottoData::loadSubObjectMini("giottoPolygon")

data.table::as.data.table(g)
```

