# `combine_split_geoms` {#combine_split_geoms}

*Package:* `GiottoClass`  
*Title:* Combine or Split Complex Geometries
*Aliases:* `splitGeom`, `combineGeom`, `combineGeom,giottoPolygon-method`, `splitGeom,giottoPolygon-method`, `combineGeom,SpatVector-method`, `splitGeom,SpatVector-method`

## Description

Geometries can be either single/simple or multi with multiple closed rings
defined as a single record. `combineGeom()` is used to combine polygons.
`splitGeom()` breaks combined geometries down into constituent parts.  

Avoid using the `SpatVector` methods. They are lower-level and does not
deal with IDs like might be expected by Giotto.

## Usage

```r
combineGeom,giottoPolygon-method(
  x,
  by = NULL,
  dissolve = FALSE,
  fun = "mean",
  ...,
  fmt = "poly_%d",
  previous_id = "source_id"
)

splitGeom,giottoPolygon-method(x, fmt = "poly_%d", previous_id = "source_id", ...)

combineGeom,SpatVector-method(x, by = NULL, dissolve = FALSE, fun = "mean", ...)

splitGeom,SpatVector-method(x, ...)
```

## Arguments

- `x`: geometry class to combine or split.
- `by`: character. Column name of variable used to group the geometries.
Will be used as the new `poly_ID` column. All geometries will be combined
if not provided.
- `dissolve`: logical. Should borders between aggregated geometries be dissolved?
- `fun`: function used to aggregate values. Either an actual function, or for the following, their name: "mean", "max", "min", "median", "sum", "modal", "any", "all", "none", "prod", "which.min", "which.max", "table", "sd" (sample standard deviation) and "std" (population standard deviation)
- `...`: additional params to pass to `[terra::aggregate()](terra:aggregate)` (and then to
`fun`, such as `na.rm=TRUE`) or `[terra::disagg()](terra:disaggregate)`
- `fmt`: character. sprintf formatting to use to generate `poly_ID` column
values if no attributes are retained after combining.
- `previous_id`: character. If not `NULL`, column name to store original
poly_ID values under. Note that merged IDs will be `NA`.

## Value

the same class as `x`

## Details

Currently, these are simple wrappers around terra's
`aggregate(dissolve = FALSE)` and `disagg()` with some additional handling
around the `poly_ID` column and a different name to avoid confusion with
spatial feature aggregation.

## Examples

```r
dt <- data.table::data.table(
    id = c(
        rep('a', 3), # Triangle (id 'a')
        rep('b', 4), # Square 1 (id 'b')
        rep('c', 4), # Square 2 (id 'c')
        rep('d', 4) # Square 3 (id 'd')
    ),
    x = c(
        0, 1, 0.5,
        2, 5, 5, 2,
        5, 5, 6, 6,
        6, 7, 7, 6
    ),
    y = c(
        0, 0, 1,
        2, 2, 5, 5,
        2, 3, 3, 2,
        5, 5, 6, 6
    )
)
plot_colors <- getRainbowColors(4)
gpoly <- createGiottoPolygon(dt, verbose = FALSE)
plot(gpoly, col = plot_colors)

gpoly$group_id <- sprintf("group_%d", c(1, 2, 2, 3))
gpoly$values <- 1:4
force(gpoly)

c_all <- combineGeom(gpoly) # combine all
force(c_all)
plot(c_all, col = plot_colors)

c_gid <- combineGeom(gpoly, by = "group_id")
force(c_gid)
plot(c_gid, col = plot_colors)
# `dissolve` removes touching boundaries
plot(combineGeom(gpoly, by = "group_id", dissolve = TRUE),
     col = plot_colors)

# split combined geometries
s_cgid <- splitGeom(c_gid)
force(s_cgid)
plot(s_cgid, col = plot_colors)
```

