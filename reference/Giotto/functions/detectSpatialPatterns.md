# `detectSpatialPatterns` {#detectSpatialPatterns}

*Package:* `Giotto`  
*Title:* detectSpatialPatterns

## Description

Identify spatial patterns through PCA on average expression
in a spatial grid.

## Usage

```r
detectSpatialPatterns(
  gobject,
  expression_values = c("normalized", "scaled", "custom"),
  spatial_grid_name = "spatial_grid",
  min_cells_per_grid = 4,
  scale_unit = FALSE,
  ncp = 100,
  show_plot = TRUE,
  PC_zscore = 1.5
)
```

## Arguments

- `gobject`: giotto object
- `expression_values`: expression values to use
- `spatial_grid_name`: name of spatial grid to use
(default = 'spatial_grid')
- `min_cells_per_grid`: minimum number of cells in a grid to be considered
- `scale_unit`: scale features
- `ncp`: number of principal components to calculate
- `show_plot`: show plots
- `PC_zscore`: minimum z-score of variance explained by a PC

## Value

spatial pattern object 'spatPatObj'

## Details

Steps to identify spatial patterns:

