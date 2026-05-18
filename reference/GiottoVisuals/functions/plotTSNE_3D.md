# `plotTSNE_3D` {#plotTSNE_3D}

*Package:* `GiottoVisuals`  
*Title:* plotTSNE_3D

## Description

Visualize cells according to dimension reduction coordinates

## Usage

```r
plotTSNE_3D(
  gobject,
  dim_reduction_name = "tsne",
  default_save_name = "TSNE_3D",
  ...
)
```

## Arguments

- `gobject`: giotto object
- `dim_reduction_name`: name of TSNE
- `default_save_name`: default save name of TSNE plot
- `...`: Arguments passed on to `[dimPlot3D](=dimPlot3D)`
  - **`spat_unit`**: spatial unit (e.g. "cell")
- **`feat_type`**: feature type (e.g. "rna", "dna", "protein")
- **`show_plot`**: logical. show plot
- **`return_plot`**: logical. return ggplot object
- **`save_plot`**: logical. save the plot
- **`save_param`**: list of saving parameters,
see `[showSaveParameters]`
- **`dim1_to_use`**: numeric. dimension to use on x-axis
- **`dim2_to_use`**: numeric. dimension to use on y-axis
- **`dim3_to_use`**: numeric. dimension to use on z-axis
- **`show_NN_network`**: logical. Show underlying NN network
- **`nn_network_to_use`**: character. type of NN network to use (kNN vs sNN)
- **`network_name`**: character. name of NN network to use,
if show_NN_network = TRUE
- **`spat_enr_names`**: character. names of spatial enrichment results
to include
- **`cell_color`**: character. what to color cells by (e.g. metadata col or
spatial enrichment col)
- **`color_as_factor`**: logical. convert color column to factor.
Discrete colors are used when this is TRUE. continuous colors when FALSE.
- **`cell_color_code`**: character. discrete colors to use. palette to use or
named vector of colors
- **`cell_color_gradient`**: character. continuous colors to use. palette to
use or vector of colors to use (minimum of 2).
- **`select_cell_groups`**: select subset of cells/clusters based on
cell_color parameter
- **`select_cells`**: select subset of cells based on cell IDs
- **`show_other_cells`**: display not selected cells
- **`other_cell_color`**: color for not selected cells
- **`other_point_size`**: point size for not selected cells
- **`show_cluster_center`**: plot center of selected clusters
- **`show_center_label`**: plot label of selected clusters
- **`center_point_size`**: size of center points
- **`label_size`**: size of labels
- **`edge_alpha`**: column to use for alpha of the edges
- **`point_size`**: size of point (cell)

## Value

plotly

## Details

Description of parameters.

## See Also

Other reduced dimension visualizations: 
`[dimPlot2D]()`,
`[plotPCA]()`,
`[plotPCA_2D]()`,
`[plotPCA_3D]()`,
`[plotTSNE]()`,
`[plotTSNE_2D]()`,
`[plotUMAP]()`,
`[plotUMAP_2D]()`,
`[plotUMAP_3D]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("starmap")
plotTSNE_3D(g)
```

