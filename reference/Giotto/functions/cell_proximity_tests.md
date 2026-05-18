# `cell_proximity_tests` {#cell_proximity_tests}

*Package:* `Giotto`  
*Title:* Interaction changed features test methods
*Aliases:* `.do_ttest`, `.do_limmatest`, `.do_wilctest`, `.do_permuttest`

## Description

Perform specified test on subsets of a matrix

## Usage

```r
.do_ttest(
  expr_values,
  select_ind,
  other_ind,
  adjust_method,
  mean_method,
  offset = 0.1
)

.do_limmatest(expr_values, select_ind, other_ind, mean_method, offset = 0.1)

.do_wilctest(
  expr_values,
  select_ind,
  other_ind,
  adjust_method,
  mean_method,
  offset = 0.1
)

.do_permuttest(
  expr_values,
  select_ind,
  other_ind,
  n_perm = 1000,
  adjust_method = "fdr",
  mean_method,
  offset = 0.1,
  set_seed = TRUE,
  seed_number = 1234
)
```

## Value

cell proximity values

