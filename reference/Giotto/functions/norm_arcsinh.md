# `norm_arcsinh` {#norm_arcsinh}

*Package:* `Giotto`  
*Title:* Arcsinh Normalization

## Description

A normalization commonly used with intensity-based data (CODEX, CyCIF, IMC).
It effectively handles a wide dynamic range and zero/near-zero values while
preserving the relative differences between signals of different intensities.



```
\LARGE
x'_{i,j} = \operatorname{arcsinh}\left({\frac{x_{i,j}}{c}}\right)

```



Where:
- (`x_{i,j}`) is the raw intensity for feature `i` in sample `j`
- (`x'_{i,j}`) is the normalized intensity for feature `i` in
sample `j`
- (`c`) is a cofactor that determines the degree of transformation

## Value

normalized object

## See Also

`[process_param()](=process_param)`

Other normalization parameters: 
`[norm_default]`,
`[norm_l2]`,
`[norm_library]`,
`[norm_log]`,
`[norm_osmfish]`,
`[norm_pearson]`,
`[norm_quantile]`,
`[norm_tfidf]`

