# `cellProximitySpatPlot` {#cellProximitySpatPlot}

*Package:* `Giotto`  
*Title:* cellProximitySpatPlot

## Description

Visualize 2D cell-cell interactions according to spatial
coordinates in ggplot mode

## Usage

```r
cellProximitySpatPlot(gobject, ...)
```

## Arguments

- `gobject`: giotto object
- `...`: Arguments passed on to `[cellProximitySpatPlot2D](=cellProximitySpatPlot2D)`
  - **`spat_loc_name`**: spatial locations to use
- **`interaction_name`**: cell-cell interaction name
- **`cluster_column`**: cluster column with cell clusters
- **`sdimx`**: x-axis dimension name (default = 'sdimx')
- **`sdimy`**: y-axis dimension name (default = 'sdimy')
- **`show_other_cells`**: decide if show cells not in network
- **`show_network`**: show spatial network of selected cells
- **`show_other_network`**: show spatial network of not selected cells
- **`network_color`**: color of spatial network
- **`show_grid`**: show spatial grid
- **`grid_color`**: color of spatial grid
- **`spatial_grid_name`**: name of spatial grid to use
- **`coord_fix_ratio`**: fix ratio between x and y-axis
- **`point_size_select`**: size of selected points
- **`point_select_border_col`**: border color of selected points
- **`point_select_border_stroke`**: stroke size of selected points
- **`point_size_other`**: size of other points
- **`point_alpha_other`**: opacity of other points
- **`point_other_border_col`**: border color of other points
- **`point_other_border_stroke`**: stroke size of other points
- **`spat_unit`**: spatial unit (e.g. "cell")
- **`feat_type`**: feature type (e.g. "rna", "dna", "protein")
- **`show_plot`**: logical. show plot
- **`return_plot`**: logical. return ggplot object
- **`save_plot`**: logical. save the plot
- **`save_param`**: list of saving parameters, see
`[showSaveParameters]`
- **`default_save_name`**: default save name for saving, don't change,
change save_name in save_param
- **`cell_color`**: character. what to color cells by (e.g. metadata col or
spatial enrichment col)
- **`color_as_factor`**: logical. convert color column to factor. discrete
colors are used when this is TRUE. continuous colors when FALSE.
- **`cell_color_code`**: character. discrete colors to use. palette to use or
named vector of colors
- **`spatial_network_name`**: name of spatial network to use
- **`show_legend`**: logical. show legend

## Value

ggplot

## Details

Description of parameters.

## See Also

`[cellProximitySpatPlot2D]` and
`[cellProximitySpatPlot3D]` for 3D

