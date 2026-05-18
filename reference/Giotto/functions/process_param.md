# `process_param` {#process_param}

*Package:* `Giotto`  
*Title:* Data Processing Parameter Classes
*Aliases:* `defaultNormParam-class`, `libraryNormParam-class`, `logNormParam-class`, `osmFISHNormParam-class`, `pearsonResidNormParam-class`, `quantileNormParam-class`, `tfidfNormParam-class`, `l2NormParam-class`, `arcsinhNormParam-class`, `defaultScaleParam-class`, `zscoreScaleParam-class`, `limmaAdjustParam-class`, `binarizeThreshParam-class`, `minmaxThreshParam-class`, `normParam`, `scaleParam`, `adjustParam`, `thresholdParam`

## Description

Data processing operations in Giotto Suite can be divided into
normalization, scaling, and adjustments. These operations can be selected
via the factory functions `normParam()`, `scaleParam()`, and `adjustParam()`,
respectively.

Requested operations are generated as method-specific param classes that
contain all the parameters needed to perform them, editable through $<-.

## Usage

```r
normParam(method = "default", ...)

scaleParam(method = "default", ...)

adjustParam(method = "limma", ...)

thresholdParam(method = "binarize", ...)
```

## Arguments

- `method`: character. Name of method to use. See details.
- `...`: (optional) Additional named parameters relevant to the param
class.

## Details

Generated params are S4 objects inheriting from `processParam` and one of
`normParam`, `scaleParam`, and `adjustParam`.

## See Also

`[processData()](=processData)` for the generic used to apply these params

`[processExpression()](=processExpression)` for the way to use this framework with the
`giotto` object

