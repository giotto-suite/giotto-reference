# `readExprMatrix` {#readExprMatrix}

*Package:* `GiottoClass`  
*Title:* Read expression matrix

## Description

Function to read an expression matrix into a sparse matrix.

## Usage

```r
readExprMatrix(
  path,
  cores = determine_cores(),
  transpose = FALSE,
  feat_type = "rna",
  expression_matrix_class = c("dgCMatrix", "DelayedArray", "dbSparseMatrix")
)
```

## Arguments

- `path`: path to the expression matrix
- `cores`: number of cores to use
- `transpose`: transpose matrix
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `expression_matrix_class`: class of expression matrix to
use (e.g. 'dgCMatrix', 'DelayedArray')

## Value

sparse matrix

## Details

The expression matrix needs to have both unique column names and
row names

## Examples

```r
x <- matrix(seq_len(100), nrow = 10)
temporal_dir <- tempdir()
write.csv(x, paste0(temporal_dir, "/mymatrix.csv"))

readExprMatrix(paste0(temporal_dir, "/mymatrix.csv"))
```

