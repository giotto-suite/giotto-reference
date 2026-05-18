# `overlapPointDT-class` {#overlapPointDT-class}

*Package:* `GiottoClass`  
*Title:* Polygon and Point Relationships
*Aliases:* `[,overlapPointDT,gIndex,missing,missing-method`, `[,overlapPointDT,missing,gIndex,missing-method`, `[,overlapPointDT,gIndex,gIndex,missing-method`

## Description

Utility class for storing overlaps relationships between polygons and points
in a sparse `data.table` format. Retrieve the unique ID index of overlapped
points [i, ]. Get indices of which polys are overlapping specific feature
species using [, j].

Subsetting with `ids = FALSE` and [i, j] indexing is also supported.

Supports `as.matrix` for conversion to `dgCMatrix`. Contained poly and
feature names simplify rownames/colnames and empty row/col creation.

## Usage

```r
[,overlapPointDT,gIndex,missing,missing-method(x, i, j, ..., use_names = FALSE, ids = TRUE, drop)

[,overlapPointDT,missing,gIndex,missing-method(x, i, j, ..., use_names = FALSE, ids = TRUE, drop)

[,overlapPointDT,gIndex,gIndex,missing-method(x, i, j, ..., use_names = FALSE, drop)
```

## Arguments

- `x`: object
- `i`: numeric, character, logical. Index of or name of poly in overlapping
polygons
- `j`: numeric, character, logical. Index of or name of feature being
overlapped.
- `...`: additional params to pass (none implemented)
- `use_names`: logical (default = `FALSE`). Whether to return as integer
indices or with character ids.
- `ids`: logical (default = `TRUE`). Whether to return the requested
integer indices (`TRUE`) or the subset overlap object (`FALSE`).
- `drop`: not used.

## Value

integer or character if only `i` or `j` provided, depending on
`use_names`. A subset `overlapPointDT` if both `i` and `j` are used.

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
poly <- g[["spatial_info", "z0"]][[1]]
ovlp <- overlaps(poly, "rna")
ovlp

as.matrix(ovlp)

dim(ovlp)
nrow(ovlp) # number of relationships

# get feature unique IDs overlapped by nth poly
ovlp[1] # check one (no overlaps returns integer(0))
ovlp[1:5] # check multiple
ovlp[1:5, use_names = TRUE] # returns feature names, but no longer unique

# get integer index of poly(s) overlapping particular feature species
ovlp[, 1]
ovlp[, "Mlc1"] # this is the same

# get a subset of overlap object
ovlp[1:10, ids = FALSE] # subset to first 10 polys
ovlp[, 1:10, ids = FALSE] # subset to first 10 feature species
ovlp[1:10, 1:10] # subset to first 10 polys and first 10 features species
```

