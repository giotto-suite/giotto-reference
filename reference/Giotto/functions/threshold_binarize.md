# `threshold_binarize` {#threshold_binarize}

*Package:* `Giotto`  
*Title:* Data Binarization

## Description

Binarize values to 0 and 1 based on a minimal value. For matrices, the
default threshold is 0. For rasters, the default is a value determined
through sampled (5e5 pixels) otsu.

## Value

binarizeThreshParam

## See Also

[process_param]

Other threshold parameters: 
`[threshold_minmax]`

## Examples

```r
e <- GiottoData::loadSubObjectMini("exprObj")
# also works with matrix classes
bin_e <- processData(e, thresholdParam("binarize"))
force(bin_e)

gimg <- GiottoData::loadSubObjectMini("giottoLargeImage")
# also works with SpatRasters
bin_img <- processData(gimg, thresholdParam("binarize"))
plot(bin_img)
```

