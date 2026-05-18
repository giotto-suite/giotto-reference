# `norm_tfidf` {#norm_tfidf}

*Package:* `Giotto`  
*Title:* TF-IDF Normalization

## Description

TF-IDF (Term Frequency-Inverse Document Frequency) normalization is borrowed
from natural language processing to identify features that are highly
expressed in specific samples but not widely expressed across the entire
dataset.

There are several different implementations that apply log or binarization
to different terms. `sub_method = c(1:3)` and `dgCMatrix` optimizations are
based on the ArchR implementations.



```
\LARGE
TF_{i,j} = \frac{x_{i,j}}{\sum_{i} x_{i,j}}

```





```
\LARGE
IDF_{i} = \frac{n_{samples}}{\sum_{j} x_{i,j}}

```





```
\LARGE
IBDF_{i} = \frac{n_{samples}}{1 + n_{samples \: where \: feature \: i > 0}}

```



**Implementations** (`sub_method`):



```
\large
(default) \quad TFIDF_{i,j} = TF_{i,j} \times \log(IBDF_{i} + 1)

```





```
\large
(1) \quad TFIDF_{i,j} = TF_{i,j} \times \log(IDF_{i} + 1)

```





```
\large
(2) \quad TFIDF_{i,j} = \log(TF_{i,j} \times IDF_{i} \times S + 1) \quad 

```





```
\large
(3) \quad TFIDF_{i,j} = \log(TF_{i,j} + 1) \times \log(IDF_{i} + 1)

```



Where:
- (`x_{i,j}`) is the raw count for feature `i` in sample `j`
- (`TF_{i,j}`) is the term frequency of feature `i` in sample `j`
- (`IDF_{i}`) is the inverse document frequency of feature `i`
- (`IBDF_{i}`) is the inverse binarized document frequency of feature `i`
- (`TFIDF_{i,j}`) is the final TF-IDF normalized value
- (`S`) is a scalefactor (default = 10000)

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
`[norm_quantile]`

## References

Cusanovich, D., Reddington, J., Garfield, D. et al. The cis-regulatory
dynamics of embryonic development at single-cell resolution.
Nature 555, 538–542 (2018). https://doi.org/10.1038/nature25981

Stuart T, Srivastava A, Madad S, Lareau CA, Satija R. Single-cell chromatin
state analysis with Signac. Nat Methods. 2021 Nov;18(11):1333-1341.
doi: 10.1038/s41592-021-01282-5.

Granja JM, Corces MR, Pierce SE, Bagdatli ST, Choudhry H, Chang HY,
Greenleaf WJ. ArchR is a scalable software package for integrative
single-cell chromatin accessibility analysis.
Nat Genet. 2021 Mar;53(3):403-411. doi: 10.1038/s41588-021-00790-6.

## Examples

```r
e <- GiottoData::loadSubObjectMini("exprObj")
processData(e, normParam("tf-idf"))
processData(e, normParam("tf-idf", sub_method = 1))
processData(e, normParam("tf-idf", sub_method = 2))
processData(e, normParam("tf-idf", sub_method = 3))
```

