# `plotly_grid` {#plotly_grid}

*Package:* `GiottoVisuals`  
*Title:* plotly_grid

## Description

provide grid segment to draw in plot_ly()

## Usage

```r
plotly_grid(
  spatial_grid,
  x_start = "x_start",
  y_start = "y_start",
  x_end = "x_end",
  y_end = "y_end"
)
```

## Arguments

- `spatial_grid`: spatial_grid in giotto object
- `x_start`: default to "x_start"
- `y_start`: default to "y_start"
- `x_end`: default to "x_end"
- `y_end`: default to "y_end"

## Value

edges in spatial grid as data.table()

## Examples

```r
g <- GiottoData::loadGiottoMini("visium", verbose = FALSE)

library(GiottoClass)
g <- createSpatialGrid(
    gobject = g,
    sdimx_stepsize = 400,
    sdimy_stepsize = 400,
    minimum_padding = 0
)

my_spatial_grid <- getSpatialGrid(g)

plotly_grid(my_spatial_grid)
```

