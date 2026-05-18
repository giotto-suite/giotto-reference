# `setMultiomics` {#setMultiomics}

*Package:* `GiottoClass`  
*Title:* Set multiomics integration results

## Description

Set a multiomics integration result in a Giotto object

## Usage

```r
setMultiomics(
  gobject = NULL,
  result,
  spat_unit = NULL,
  feat_type = NULL,
  integration_method = "WNN",
  result_name = "theta_weighted_matrix",
  verbose = TRUE,
  ...
)
```

## Arguments

- `gobject`: A Giotto object
- `result`: A matrix or result from multiomics
integration (e.g. theta weighted values from runWNN)
- `spat_unit`: spatial unit (e.g. 'cell')
- `feat_type`: (e.g. 'rna_protein')
- `integration_method`: multiomics integration method used. Default = 'WNN'
- `result_name`: Default = 'theta_weighted_matrix'
- `verbose`: be verbose
- `...`: additional params to pass

## Value

A giotto object

## See Also

Other multiomics accessor functions: 
`[getMultiomics]()`,
`[get_multiomics]()`,
`[set_multiomics]()`

Other functions to set data in giotto object: 
`[setCellMetadata]()`,
`[setDimReduction]()`,
`[setExpression]()`,
`[setFeatureInfo]()`,
`[setFeatureMetadata]()`,
`[setGiotto,giotto,giottoBinPoints-method]`,
`[setGiottoImage]()`,
`[setNearestNetwork]()`,
`[setPolygonInfo]()`,
`[setSpatialEnrichment]()`,
`[setSpatialGrid]()`,
`[setSpatialLocations]()`,
`[setSpatialNetwork]()`,
`[set_multiomics]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

setMultiomics(
    gobject = g, result = matrix(rnorm(100), nrow = 10),
    spat_unit = "cell", feat_type = "rna_protein"
)
```

