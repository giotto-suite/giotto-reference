# `setExpression` {#setExpression}

*Package:* `GiottoClass`  
*Title:* Set expression data
*Aliases:* `setExpressionValues`

## Description

Function to set expression values for giotto object.

## Usage

```r
setExpression(
  gobject,
  x,
  spat_unit = NULL,
  feat_type = NULL,
  name = "raw",
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: exprObj or list of exprObj to set. Passing NULL will remove a
specified set of expression data from the giotto object
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `name`: name for the expression information
- `provenance`: provenance information (optional)
information for the giotto object. Pass NULL to remove an expression object
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## See Also

Other expression accessor functions: 
`[getExpression]()`

Other functions to set data in giotto object: 
`[setCellMetadata]()`,
`[setDimReduction]()`,
`[setFeatureInfo]()`,
`[setFeatureMetadata]()`,
`[setGiotto,giotto,giottoBinPoints-method]`,
`[setGiottoImage]()`,
`[setMultiomics]()`,
`[setNearestNetwork]()`,
`[setPolygonInfo]()`,
`[setSpatialEnrichment]()`,
`[setSpatialGrid]()`,
`[setSpatialLocations]()`,
`[setSpatialNetwork]()`,
`[set_multiomics]()`

## Examples

```r
g <- createGiottoObject()
m <- matrix(rnorm(100), nrow = 10)
colnames(m) <- paste0("cell_", seq_len(10))
rownames(m) <- paste0("feat_", seq_len(10))

g <- setExpression(gobject = g, x = createExprObj(m, name = "raw"))
```

