# `as.polygons` {#as.polygons}

*Package:* `GiottoClass`  
*Title:* Coerce to SpatVector polygons
*Aliases:* `as.polygons,data.frame-method`

## Description

Coversion to a SpatVector of polygons.

## Usage

```r
as.polygons,data.frame-method(
  x,
  include_values = TRUE,
  specific_values = NULL,
  sort_geom = FALSE
)
```

## Arguments

- `x`: SpatRaster, SpatVector, SpatExtent, or correctly formatted
data.frame
- `include_values`: `logical`. Whether to include additional columns other
than the geometry information as `SpatVector` attributes. Default is TRUE.
- `specific_values`: `character`. Specific subset of columns to include as
attributes if `include_values = TRUE`.
- `sort_geom`: `logical`. Whether to sort key the data.table input by
'geom', 'part', and 'hole' columns.

## Value

SpatVector polygons

## See Also

`[terra::as.polygons()](terra:as.polygons)`

Other As coercion functions: 
`[as.data.table.giottoBinPoints]()`,
`[as.matrix]()`,
`[as.points]()`,
`[r_spatial_conversions]`

## Examples

```r
g <- GiottoData::loadSubObjectMini("giottoPolygon")

as.polygons(slot(g, "spatVector"))
```

