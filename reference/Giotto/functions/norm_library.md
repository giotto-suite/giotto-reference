# `norm_library` {#norm_library}

*Package:* `Giotto`  
*Title:* Library Size Normalization

## Description

Normalize expression matrix for total library size and then scale by
a custom scalefactor.

This method does not work well when any cells/samples
have a library size of 0, so filtering prior to this is recommended.



```
\LARGE
x'_{i,j} = \frac{x_{i,j}}{\sum_{i} x_{i,j}} \times k

```


Where:
- (`x_{i,j}`) is the raw count for feature `i` in sample `j`
- (`x'_{i,j}`) is the library normalized and scaled expression value for
feature `i` in sample `j`
- (k) is a scalefactor applied after normalization

## Value

normalized object

## See Also

[process_param]

Other normalization parameters: 
`[norm_arcsinh]`,
`[norm_default]`,
`[norm_l2]`,
`[norm_log]`,
`[norm_osmfish]`,
`[norm_pearson]`,
`[norm_quantile]`,
`[norm_tfidf]`

