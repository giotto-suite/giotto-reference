# `spat_fisher_exact` {#spat_fisher_exact}

*Package:* `Giotto`  
*Title:* Fisher exact test
*Aliases:* `.spat_fish_func`, `.spat_fish_func_dt`

## Description

Perform fisher exact test

## Usage

```r
.spat_fish_func(feat, bin_matrix, spat_mat, calc_hub = FALSE, hub_min_int = 3)

.spat_fish_func_dt(
  bin_matrix_DTm,
  spat_netw_min,
  calc_hub = FALSE,
  hub_min_int = 3,
  cores = NA
)
```

## Value

A list with class "htest"

