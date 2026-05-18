# `filterCellProximityGenes` {#filterCellProximityGenes}

*Package:* `Giotto`  
*Title:* deprecated

## Description

Filter Interaction Changed Feature scores.

## Usage

```r
filterCellProximityGenes(...)
```

## Arguments

- `...`: Arguments passed on to `[filterInteractionChangedFeats](=filterInteractionChangedFeats)`
  - **`icfObject`**: ICF (interaction changed feature) score object
- **`min_cells`**: minimum number of source cell type
- **`min_cells_expr`**: minimum expression level for source cell type
- **`min_int_cells`**: minimum number of interacting neighbor cell type
- **`min_int_cells_expr`**: minimum expression level for interacting neighbor
cell type
- **`min_fdr`**: minimum adjusted p-value
- **`min_spat_diff`**: minimum absolute spatial expression difference
- **`min_log2_fc`**: minimum log2 fold-change
- **`min_zscore`**: minimum z-score change
- **`zscores_column`**: calculate z-scores over cell types or genes
- **`direction`**: differential expression directions to keep

## Value

proximity genes

## See Also

`[filterInteractionChangedFeats]`

