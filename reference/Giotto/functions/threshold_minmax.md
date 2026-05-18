# `threshold_minmax` {#threshold_minmax}

*Package:* `Giotto`  
*Title:* Value MinMax Restriction/Clamping

## Description

Set an `upper` and `lower` bound for the data. Values above `upper` will be
set to the `upper` value. Values below `lower` will be set to the `lower`
value.

## Value

minmaxThreshParam

## See Also

[process_param]

Other threshold parameters: 
`[threshold_binarize]`

## Examples

```r
e <- GiottoData::loadSubObjectMini("exprObj")
# also works with matrix classes
max_e <- processData(e, thresholdParam("minmax", upper = 6))
force(max_e)

gimg <- GiottoData::loadSubObjectMini("giottoLargeImage")
# also works with SpatRasters
mm_img <- processData(gimg,
    thresholdParam("minmax", lower = 30, upper = 100)
)
plot(mm_img)
```

