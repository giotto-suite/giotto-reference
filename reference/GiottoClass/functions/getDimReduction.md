# `getDimReduction` {#getDimReduction}

*Package:* `GiottoClass`  
*Title:* Get dimension reduction

## Description

Function to get a dimension reduction object

## Usage

```r
getDimReduction(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  reduction = c("cells", "feats"),
  reduction_method = NULL,
  name = NULL,
  output = c("dimObj", "matrix"),
  set_defaults = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `reduction`: reduction on cells or features (e.g. "cells", "feats")
- `reduction_method`: reduction method (e.g. "pca", "umap", "tsne")
- `name`: name of reduction results
- `output`: object type to return as. Either 'dimObj' (default) or 'matrix'
of the embedding coordinates.
- `set_defaults`: set default spat_unit and feat_type. Change to FALSE
only when
expression and spat_info are not expected to exist.

## Value

dim reduction object (default) or dim reduction coordinates

## See Also

Other dimensional reduction data accessor functions: 
`[setDimReduction]()`

Other functions to get data from giotto object: 
`[getCellMetadata]()`,
`[getExpression]()`,
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

getDimReduction(g)
```

