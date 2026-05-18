# `norm_quantile` {#norm_quantile}

*Package:* `Giotto`  
*Title:* Quantile Normalization

## Description

Quantile normalization makes the statistical distribution of values in each
column identical by replacing the original values with the mean of the
values at the same rank across all columns. This removes technical variation
while preserving relative differences between features.

Steps:
1. Rank the values within each column (average taken in case of ties)
1. Calculate the mean of values at the same rank across all columns
1. Replace each value with the mean value corresponding to its rank




```
\LARGE
q_{i,j} = \bar{x}_{rank(i,j)}

```



Where:
- (`rank(i,j)`) is the rank of feature `i` within column `j`
- (`\bar{x}_{r}`) where `r = rank(i,j)` is the mean of values with
rank `r` across all columns
- (`q_{i,j}`) is the quantile-normalized value

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
`[norm_osmfish]`,
`[norm_pearson]`,
`[norm_tfidf]`

## References

Bolstad, B.M., Irizarry, R.A., Astrand, M. et al. A comparison of
normalization methods for high density oligonucleotide array data based on
variance and bias. Bioinformatics 19, 185–193 (2003).
https://doi.org/10.1093/bioinformatics/19.2.185

