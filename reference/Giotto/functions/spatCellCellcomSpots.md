# `spatCellCellcomSpots` {#spatCellCellcomSpots}

*Package:* `Giotto`  
*Title:* spatCellCellcomSpots

## Description

Spatial Cell-Cell communication scores based on spatial
expression of interacting cells at spots resolution

## Usage

```r
spatCellCellcomSpots(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  ave_celltype_exp,
  spatial_network_name = "Delaunay_network",
  spat_enr_name = "DWLS",
  cluster_column = "cell_ID",
  random_iter = 1000,
  feature_set_1,
  feature_set_2,
  min_observations = 2,
  expression_values = c("normalized", "scaled", "custom"),
  detailed = FALSE,
  adjust_method = c("fdr", "bonferroni", "BH", "holm", "hochberg", "hommel", "BY",
    "none"),
  adjust_target = c("features", "cells"),
  do_parallel = TRUE,
  cores = NA,
  set_seed = TRUE,
  seed_number = 1234,
  verbose = c("a little", "a lot", "none")
)
```

## Arguments

- `gobject`: giotto object to use
- `spat_unit`: spatial unit (e.g. 'cell')
- `feat_type`: feature type (e.g. 'rna')
- `ave_celltype_exp`: Matrix with average expression per cell type
- `spatial_network_name`: spatial network to use for identifying
interacting cells
- `spat_enr_name`: name of spatial enrichment containing DWLS results.
Default = `"DWLS"`
- `cluster_column`: cluster column with cell type information
- `random_iter`: number of iterations
- `feature_set_1`: first specific feature set from feature pairs
- `feature_set_2`: second specific feature set from feature pairs
- `min_observations`: minimum number of interactions needed to be
considered
- `expression_values`: (e.g. 'normalized', 'scaled', 'custom')
- `detailed`: provide more detailed information
(random variance and z-score)
- `adjust_method`: which method to adjust p-values
- `adjust_target`: adjust multiple hypotheses at the cell or feature
level
- `do_parallel`: run calculations in parallel with mclapply
- `cores`: number of cores to use if do_parallel = TRUE
- `set_seed`: set a seed for reproducibility
- `seed_number`: seed number
- `verbose`: verbose (e.g. 'a little', 'a lot', 'none')

## Value

Cell-Cell communication scores for feature pairs based on spatial
interaction

## Details

Statistical framework to identify if pairs of features
(such as ligand-receptor combinations) are expressed at higher levels than
expected based on a reshuffled null distribution of feature expression
values in cells that are spatially in proximity to each other.

