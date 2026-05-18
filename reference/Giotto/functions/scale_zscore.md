# `scale_zscore` {#scale_zscore}

*Package:* `Giotto`  
*Title:* Z Score Scaling

## Description

Wrapper around `base::scale()` to make it compatible with the
`[processData()](=processData)` framework. Additionally provides a `MARGIN` param.



```
\LARGE
z_{i,j} = \frac{x_{i,j} - \mu_i}{\sigma_i}

```



Where:
- `x_{i,j}` is the original value for feature `i` in sample `j`
- `\mu_i` is the mean of feature `i` across all samples
- `\sigma_i` is the standard deviation of feature `i` across all
samples
- `z_{i,j}` is the resulting scaled value

## Value

scaled object

## See Also

[process_param]

Other scaling parameters: 
`[scale_default]`

