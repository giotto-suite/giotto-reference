# `norm_log` {#norm_log}

*Package:* `Giotto`  
*Title:* Log Normalization

## Description

Apply a log normalization



```
\LARGE
x'_{i,j} = \frac{\log(x_{i,j} + b)}{\log(a)}

```


Where:
- (`x_{i,j}`) is the raw count for feature `i` in sample `j`
- (`x'_{i,j}`) is the log normalized expression value for feature
`i` in sample `j`
- (`a`) is the log base
- (`b`) is an offset value

## Value

normalized object

## See Also

[process_param]

Other normalization parameters: 
`[norm_arcsinh]`,
`[norm_default]`,
`[norm_l2]`,
`[norm_library]`,
`[norm_osmfish]`,
`[norm_pearson]`,
`[norm_quantile]`,
`[norm_tfidf]`

