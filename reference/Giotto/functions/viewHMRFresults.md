# `viewHMRFresults` {#viewHMRFresults}

*Package:* `Giotto`  
*Title:* viewHMRFresults

## Description

View results from doHMRF.

## Usage

```r
viewHMRFresults(
  gobject,
  HMRFoutput,
  k = NULL,
  betas_to_view = NULL,
  third_dim = FALSE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `HMRFoutput`: HMRF output from doHMRF
- `k`: number of HMRF domains
- `betas_to_view`: results from different betas that you want to view
- `third_dim`: 3D data (boolean)
- `...`: additional paramters (see details)

## Value

spatial plots with HMRF domains

## See Also

`[spatPlot2D]` and `[spatPlot3D]`

