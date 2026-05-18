# `cellProximityVisPlot_internals` {#cellProximityVisPlot_internals}

*Package:* `Giotto`  
*Title:* cellProximityVisPlot internals
*Aliases:* `.cellProximityVisPlot_2D_ggplot`, `.cellProximityVisPlot_2D_plotly`, `.cellProximityVisPlot_3D_plotly`

## Description

Create the plots for `cellProximityVisPlot()`

## Usage

```r
.cellProximityVisPlot_2D_ggplot(
  gobject,
  interaction_name = NULL,
  cluster_column = NULL,
  sdimx = NULL,
  sdimy = NULL,
  cell_color = NULL,
  cell_color_code = NULL,
  color_as_factor = TRUE,
  show_other_cells = FALSE,
  show_network = FALSE,
  show_other_network = FALSE,
  network_color = NULL,
  spatial_network_name = "Delaunay_network",
  show_grid = FALSE,
  grid_color = NULL,
  spatial_grid_name = "spatial_grid",
  coord_fix_ratio = 1,
  show_legend = TRUE,
  point_size_select = 2,
  point_select_border_col = "black",
  point_select_border_stroke = 0.05,
  point_size_other = 1,
  point_alpha_other = 0.3,
  point_other_border_col = "lightgrey",
  point_other_border_stroke = 0.01,
  ...
)

.cellProximityVisPlot_2D_plotly(
  gobject,
  interaction_name = NULL,
  cluster_column = NULL,
  sdimx = NULL,
  sdimy = NULL,
  cell_color = NULL,
  cell_color_code = NULL,
  color_as_factor = TRUE,
  show_other_cells = FALSE,
  show_network = FALSE,
  show_other_network = FALSE,
  network_color = NULL,
  spatial_network_name = "Delaunay_network",
  show_grid = FALSE,
  grid_color = NULL,
  spatial_grid_name = "spatial_grid",
  show_legend = TRUE,
  point_size_select = 2,
  point_size_other = 1,
  point_alpha_other = 0.3,
  axis_scale = c("cube", "real", "custom"),
  custom_ratio = NULL,
  x_ticks = NULL,
  y_ticks = NULL,
  ...
)

.cellProximityVisPlot_3D_plotly(
  gobject,
  interaction_name = NULL,
  cluster_column = NULL,
  sdimx = NULL,
  sdimy = NULL,
  sdimz = NULL,
  cell_color = NULL,
  cell_color_code = NULL,
  color_as_factor = TRUE,
  show_other_cells = FALSE,
  show_network = FALSE,
  show_other_network = FALSE,
  network_color = NULL,
  spatial_network_name = "Delaunay_network",
  show_grid = FALSE,
  grid_color = NULL,
  spatial_grid_name = "spatial_grid",
  show_legend = TRUE,
  point_size_select = 2,
  point_size_other = 1,
  point_alpha_other = 0.5,
  axis_scale = c("cube", "real", "custom"),
  custom_ratio = NULL,
  x_ticks = NULL,
  y_ticks = NULL,
  z_ticks = NULL,
  ...
)
```

## Value

cell proximity plot

## See Also

[cellProximityVisPlot()] [cellProximitySpatPlot3D()]

