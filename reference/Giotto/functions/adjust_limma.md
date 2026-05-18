# `adjust_limma` {#adjust_limma}

*Package:* `Giotto`  
*Title:* Limma Batch Correction

## Description

Batch effect removal via `[limma::removeBatchEffect()](limma:removeBatchEffect)`

## Value

limmaAdjustParam

## See Also

[process_param]

## Examples

```r
limma <- adjustParam("limma")
limma$covariate_columns <- svkey(feats = c("nr_feats", "total_expr"))

g <- GiottoData::loadGiottoMini("visium")
processExpression(g, limma, name = "limma")
```

