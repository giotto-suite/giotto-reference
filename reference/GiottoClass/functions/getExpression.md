# `getExpression` {#getExpression}

*Package:* `GiottoClass`  
*Title:* Get expression values
*Aliases:* `getExpressionValues`

## Description

Function to get expression values from giotto object

## Usage

```r
getExpression(
  gobject,
  values = NULL,
  spat_unit = NULL,
  feat_type = NULL,
  output = c("exprObj", "matrix"),
  set_defaults = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `values`: expression values to
extract (e.g. "raw", "normalized", "scaled")
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `output`: what object type to retrieve the expression as. Currently
either matrix' for the matrix object contained in the exprObj or
'exprObj' (default) for the exprObj itself are allowed.
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.

## Value

exprObj or matrix depending on output param

## See Also

Other expression accessor functions: 
`[setExpression]()`

Other functions to get data from giotto object: 
`[getCellMetadata]()`,
`[getDimReduction]()`,
`[getFeatureInfo]()`,
`[getFeatureMetadata]()`,
`[getGiottoImage]()`,
`[getMultiomics]()`,
`[getNearestNetwork]()`,
`[getPolygonInfo]()`,
`[getSpatialEnrichment]()`,
`[getSpatialGrid]()`,
`[getSpatialLocations]()`,
`[getSpatialNetwork]()`,
`[get_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

getExpression(g)
```

