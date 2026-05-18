# `clusterData` {#clusterData}

*Package:* `Giotto`  
*Title:* Data clustering
*Aliases:* `clusterData,allMatrix,BlusterParam-method`, `clusterData,allMatrix,NNClusParam-method`, `clusterData,exprObj,BlusterParam-method`, `clusterData,dimObj,BlusterParam-method`, `clusterData,spatEnrObj,BlusterParam-method`, `clusterData,nnNetObj,NNClusParam-method`, `clusterData,igraph,LouvainCommunityClusParam-method`, `clusterData,igraph,LouvainMultinetClusParam-method`, `clusterData,igraph,LeidenPythonClusParam-method`, `clusterData,igraph,LeidenIgraphClusParam-method`, `clusterData,giotto,BlusterParam-method`, `clusterData,giotto,NNClusParam-method`

## Description

**Giotto** provides several options for clustering using the
`[GiottoClass::clusterData()](GiottoClass:clusterData)` generic. Clustering for matrix-like
data hooks into the **bluster** framework. Network community clustering
type methods instead use Giotto-specific implementations that work on top
of Giotto's calculated nearest neighbor networks.

## Usage

```r
clusterData,allMatrix,BlusterParam-method(
  x,
  param,
  cell_subset = NULL,
  feat_subset = NULL,
  cells_are_rows = TRUE,
  set_seed = TRUE,
  seed_number = 1234,
  output = c("data.table", "factor", "full"),
  ...
)

clusterData,allMatrix,NNClusParam-method(x, param, ...)

clusterData,exprObj,BlusterParam-method(
  x,
  param,
  cell_subset = NULL,
  feat_subset = NULL,
  set_seed = TRUE,
  seed_number = 1234,
  output = c("data.table", "factor", "full"),
  ...
)

clusterData,dimObj,BlusterParam-method(
  x,
  param,
  cell_subset = NULL,
  feat_subset = 1:10,
  set_seed = TRUE,
  seed_number = 1234,
  output = c("data.table", "factor", "full"),
  ...
)

clusterData,spatEnrObj,BlusterParam-method(
  x,
  param,
  cell_subset = NULL,
  feat_subset = NULL,
  set_seed = TRUE,
  seed_number = 1234,
  output = c("data.table", "factor", "full"),
  ...
)

clusterData,nnNetObj,NNClusParam-method(
  x,
  param,
  set_seed = TRUE,
  seed_number = 1234,
  output = c("data.table", "factor"),
  ...
)

clusterData,igraph,LouvainCommunityClusParam-method(
  x,
  param,
  set_seed = TRUE,
  seed_number = 1234,
  output = c("data.table", "factor")
)

clusterData,igraph,LouvainMultinetClusParam-method(
  x,
  param,
  set_seed = TRUE,
  seed_number = 1234,
  output = c("data.table", "factor")
)

clusterData,igraph,LeidenPythonClusParam-method(
  x,
  param,
  set_seed = TRUE,
  seed_number = 1234,
  output = c("data.table", "factor")
)

clusterData,igraph,LeidenIgraphClusParam-method(
  x,
  param,
  set_seed = TRUE,
  seed_number = 1234,
  output = c("data.table", "factor"),
  ...
)

clusterData,giotto,BlusterParam-method(
  x,
  param,
  what = c("expression", "dimension_reduction", "spatial_enrichment"),
  name = paste(class(param), "clusters", sep = "_"),
  dim_reduction_to_use = "pca",
  dim_reduction_name = "pca",
  expression_values = "normalized",
  spat_enr_name = NULL,
  spat_unit = NULL,
  feat_type = NULL,
  output = c("gobject", "data.table", "factor", "full"),
  .n = 1L,
  ...
)

clusterData,giotto,NNClusParam-method(
  x,
  param,
  name = paste(class(param), "clusters", sep = "_"),
  nn_network_to_use = "sNN",
  network_name = "sNN.pca",
  spat_unit = NULL,
  feat_type = NULL,
  output = c("gobject", "data.table", "factor"),
  .n = 1L,
  ...
)
```

## Arguments

- `x`: data object to cluster
- `param`: S4 param class inheriting from [bluster::BlusterParam](bluster:BlusterParam-class) or
NNClusParam
- `cell_subset`: numeric, logical, factor, or character vector of cells to
use. (matrix-like clustering only)
- `feat_subset`: numeric, logical, factor, or character vector of features
or dimensions to use. (matrix-like clustering only)
- `cells_are_rows`: logical. Transposes the input matrix when `FALSE`.
Mainly here to highlight that clustering is performed on row-wise cells.
- `set_seed`: logical, default = `TRUE`. Whether to set a seed for
reproducibility.
- `seed_number`: numeric, default = 1234. If `set_seed = TRUE`, seed number
to use.
- `output`: character. Type of output.
- `"factor"` returns a numeric factor
of clustering results, named by cell_ID.
- `"data.table"` returns a two column
(or one if no cell_IDs are present) with columns `"cell_ID"` and `"cluster"`.
- `"full"` returns the full output. It is equivalent to setting `full = TRUE`
for `[bluster::clusterRows()](bluster:clusterRows)`.
- `"gobject"` can only be selected when `x` is a `giotto` object. The
clustering results are appended to the cell metadata column designated by
`name` param and the `giotto` object is returned.
- `...`: additional params to pass to underlying algorithms, if any.
- `what`: character. One of `"expression"`, `"dimension_reduction"`, or
`"spatial_enrichment"` indicating what data in `giotto` object to cluster.
(matrix-like clustering only)
- `name`: character. When `output = "gobject"`, the name to assign the
column of clustering results in cell metadata.
- `dim_reduction_to_use`: character. Type of dimension reduction to use.
- `dim_reduction_name`: character. Name of dimension reduction results to
use.
- `expression_values`: character. Name of expression values to use
- `spat_enr_name`: character. Name of spatial enrichment values to use.
- `spat_unit`: character. Spatial unit to use. NULL will autodetect based
on active spatial unit.
- `feat_type`: character. Feature type to use. NULL will autodetect based
on active feature type.
- `.n`: integer. Used in recording object history
(see `[GiottoClass::update_giotto_params()](GiottoClass:update_giotto_params)`). Number of stack frames back to record call
of interest. Set to a large negative number (e.g. -1000) to avoid recording
altogether (useful when there is another record call elsewhere in the stack
you want to use.)
- `nn_network_to_use`: character. Type of nearest neighbor network to use.
Currently one of `"sNN"` or `"kNN"`.
- `network_name`: character. Name of nearest neighbor network to use.

## See Also

`[clusterParam()](=clusterParam)` for a convenient factory function to generate
clustering param classes.

## Examples

```r
x <- clusterParam("kmeans", centers = 2)
x@centers

m <- matrix(runif(9), nrow = 3)
clusterData(m, x)
# add ids
rownames(m) <- paste("id", seq_len(3), sep = "_")
clusterData(m, x)
```

