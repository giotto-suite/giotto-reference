# `readExprData` {#readExprData}

*Package:* `GiottoClass`  
*Title:* Read expression data

## Description

Read a nested list of expression data inputs in order to
generate a list of giotto-native exprObj

## Usage

```r
readExprData(
  data_list,
  sparse = TRUE,
  cores = determine_cores(),
  default_feat_type = NULL,
  verbose = TRUE,
  provenance = NULL,
  expression_matrix_class = c("dgCMatrix", "DelayedArray")
)
```

## Arguments

- `data_list`: (nested) list of expression input data
- `sparse`: (boolean, default = TRUE) read matrix data in a sparse manner
- `cores`: number of cores to use
- `default_feat_type`: (optional) default feat_type to use
- `verbose`: be verbose
- `provenance`: (optional) provenance information
- `expression_matrix_class`: class of expression matrix to
use (e.g. 'dgCMatrix', 'DelayedArray')

## Value

exprObj

## Details

mylistA = list('a' = matrix(seq(5)), 'b' = matrix(seq(5)))
depth(mylistA)

mylistB = list(A = list('a' = matrix(seq(5)), 'b' = matrix(seq(5))),
B = list('c' = matrix(seq(5)),'d' = matrix(seq(5))))
depth(mylistB)

mylistC = list('RNA' = list('RAW' = list('cell' = matrix(seq(5)),
'nucleus' = matrix(seq(6,10))),
'NORM' = list('cell' = matrix(seq(11,15)),
'nucleus' = matrix(seq(20,25)))),
'PROT' = list('RAW' = list('cell' = matrix(seq(16,20)))))
depth(mylistC)

mymatD = matrix(data = seq(4))

## Examples

```r
x <- matrix(seq_len(100), nrow = 10)
temporal_dir <- tempdir()
write.csv(x, paste0(temporal_dir, "/mymatrix.csv"))

readExprData(paste0(temporal_dir, "/mymatrix.csv"))
```

