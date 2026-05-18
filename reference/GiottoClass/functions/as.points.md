# `as.points` {#as.points}

*Package:* `GiottoClass`  
*Title:* Coerce to SpatVector points
*Aliases:* `as.points,data.frame-method`, `as.points,spatLocsObj-method`

## Description

Coversion to a SpatVector of points.

## Usage

```r
as.points,data.frame-method(x, include_values = TRUE, specific_values = NULL)

as.points,spatLocsObj-method(x)
```

## Arguments

- `x`: SpatRaster, SpatVector, SpatExtent, or correctly formatted
data.frame
- `include_values`: `logical`. Whether to include additional columns other
than the geometry information as `SpatVector` attributes. Default is TRUE.
- `specific_values`: `character`. Specific subset of columns to include as
attributes if `include_values = TRUE`.

## Value

SpatVector points

## See Also

`[terra::as.points()](terra:as.points)`

Other As coercion functions: 
`[as.data.table.giottoBinPoints]()`,
`[as.matrix]()`,
`[as.polygons]()`,
`[r_spatial_conversions]`

## Examples

```r
g <- GiottoData::loadSubObjectMini("giottoPoints")

as.points(slot(g, "spatVector"))
```

