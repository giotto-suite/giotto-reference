# `norm_l2` {#norm_l2}

*Package:* `Giotto`  
*Title:* L2 Normalization

## Description

L2 normalization (also known as Euclidean normalization) scales each column
(sample) in the expression matrix to have unit Euclidean length. This
process makes samples with different sequencing depths more comparable and
improves the performance of distance-based analyses.



```
\LARGE
x'_{i,j} = \frac{x_{i,j}}{\sqrt{\sum_{i} x_{i,j}^2}}

```



Where:
- (`x_{i,j}`) is the expression value for feature `i` in sample `j`
- (`x'_{i,j}`) is the L2-normalized expression value

## Value

normalized object

## See Also

[process_param]

Other normalization parameters: 
`[norm_arcsinh]`,
`[norm_default]`,
`[norm_library]`,
`[norm_log]`,
`[norm_osmfish]`,
`[norm_pearson]`,
`[norm_quantile]`,
`[norm_tfidf]`

