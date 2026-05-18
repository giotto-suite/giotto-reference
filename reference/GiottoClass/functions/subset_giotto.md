# `subset_giotto` {#subset_giotto}

*Package:* `GiottoClass`  
*Title:* Subset a `giotto` object
*Aliases:* ``[.giotto``, `[,giotto,gIndex,missing,missing-method`, `[,giotto,missing,gIndex,missing-method`, `[,giotto,gIndex,gIndex,missing-method`, `[,giotto,missing,missing,missing-method`, `subset,giotto-method`

## Description

Subset a giotto object with `[` or `subset()` generic. The
implementation is different from `[subsetGiotto()](=subsetGiotto)` in that all spatial units
will always be affected. The feature type to subset can be specified.

## Usage

```r
[,giotto,gIndex,missing,missing-method(x, i, j, ..., drop = TRUE)

[,giotto,missing,gIndex,missing-method(x, i, j, ..., drop = TRUE)

[,giotto,gIndex,gIndex,missing-method(x, i, j, ..., drop = TRUE)

[,giotto,missing,missing,missing-method(x, i, j, ..., drop = TRUE)

subset,giotto-method(
  x,
  subset,
  feat_ids = NULL,
  cell_ids = NULL,
  spat_unit = NULL,
  feat_type = NULL,
  negate = FALSE,
  quote = TRUE,
  ...
)
```

## Arguments

- `x`: a `giotto` object
- `...`: additional params to pass to `spatValues` used with the
subset param
- `drop`: not used
- `subset`: Logical expression evaluated in expression values
- `feat_ids, i`: character vector. Feature IDs to subset the object for.
- `cell_ids, j`: character vector. Cell/spatial IDs to subset the object
for.
- `spat_unit`: character. Controls which spatial unit to pull subsetting
information from when using `cell_ids`/`j` and `subset` params. However,
all spatial units will always be affected by the subset.
- `feat_type`: character. Subset affects these feature type(s). Default
is `"rna"`
- `negate`: logical. if `TRUE` all IDs that are **not** in the `subset`
are selected
- `quote`: logical. If `TRUE`, the `subset` param will be quoted with
`substitute()`. Set this to `FALSE` when calling from a function, although
that may not be recommended since NSE output can be unexpected when not used
interactively.

## Value

giotto object

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

# `[` examples
g[1:5]
g[, 2:10]
g[1:5, 2:10]
g[c(TRUE, FALSE), ]

# subset() examples
subset(g, nr_feats > 300)
subset(g, nr_feats > 300,
    cell_ids = c("GAATCGCCGGACACGG-1", "GAGGGCATCGCGTATC-1")
)
subset(g, Gfap + Gna12 > 10)
```

