# `norm_osmfish` {#norm_osmfish}

*Package:* `Giotto`  
*Title:* osmFISH Normalization

## Description

Normalization method as provided by the osmFISH paper

Steps:
1. First normalize genes, for each gene divide the counts by the total gene
count and multiply by the total number of genes.
1. Next normalize cells, for each cell divide the normalized gene counts by
the total counts per cell and multiply by the total number of cells.




```
\LARGE
x'_{i,j} = \frac{x_{i,j}}{\sum_j x_{i,j}} \times n_{\text{features}}

```





```
\LARGE
x''_{i,j} = \frac{x'_{i,j}}{\sum_i x'_{i,j}} \times n_{\text{samples}}

```



Where:
- (`x_{i,j}`) is the raw count for feature `i` in sample `j`
- (`x'_{i,j}`) is the feature normalized expression value
- (`x''_{i,j}`) is the final normalized expression value after both
feature and cell normalization
- (`n_{\text{samples}}`) is the total number of cells
(columns in matrix)
- (`n_{\text{features}}`) is the total number of cells
(rows in matrix)

## Value

normalized object

## See Also

[process_param]

Other normalization parameters: 
`[norm_arcsinh]`,
`[norm_default]`,
`[norm_l2]`,
`[norm_library]`,
`[norm_log]`,
`[norm_pearson]`,
`[norm_quantile]`,
`[norm_tfidf]`

