# `norm_pearson` {#norm_pearson}

*Package:* `Giotto`  
*Title:* Lause/Kobak Pearson Residuals Normalization

## Description

Calculate Pearson residuals with a dispersion adjustment, to identify cells
that deviate significantly from what would be expected under independence.
The normalization divides by the standard deviation of the difference, which
is adjusted by the dispersion parameter θ.

This normalization is designed for detection of highly variable features and
dimension reduction and clustering.



```
\LARGE
z_{i,j} = \frac{x_{i,j} - \mu_{i,j}}{\sqrt{\mu_{i,j} + \mu_{i,j}^2 / \theta}}

```





```
\LARGE
\mu_{i,j} = \frac{r_i \cdot c_j}{N}

```



Where:
- (`x_{i,j}`) is the raw count for feature `i` in sample `j`
- (`\mu_{i,j}`) is the expected value under the model
- (`r_i`) is `\sum_j x_{i,j}`
- (`c_j`) is `\sum_i x_{i,j}`
- (`N`) is `\sum_{i,j} x_{i,j}`
- (`\theta`) is a dispersion parameter
- (`z_{i,j}`) is the Pearson residual clipped to the range
`[-\sqrt{n}, \sqrt{n}]` where `n` is the number of columns. This is
done to prevent extreme values from dominating the analysis.

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
`[norm_quantile]`,
`[norm_tfidf]`

## References

Lause, J., Berens, P. & Kobak, D. Analytic Pearson residuals for
normalization of single-cell RNA-seq UMI data. Genome Biol 22, 258 (2021).
https://doi.org/10.1186/s13059-021-02451-7

