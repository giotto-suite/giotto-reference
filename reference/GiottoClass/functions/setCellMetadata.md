# `setCellMetadata` {#setCellMetadata}

*Package:* `GiottoClass`  
*Title:* Set cell metadata

## Description

Function to set cell metadata into giotto object

## Usage

```r
setCellMetadata(
  gobject,
  x,
  spat_unit = NULL,
  feat_type = NULL,
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: cellMetaObj or list of cellMetaObj to set. Passing NULL will
reset a specified set of cell metadata in the giotto object.
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `provenance`: provenance information (optional)
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## See Also

Other functions to set data in giotto object: 
`[setDimReduction]()`,
`[setExpression]()`,
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
g <- GiottoData::loadGiottoMini("visium")
m1 <- getCellMetadata(g, output = "data.table")
m2 <- data.frame(
    cell_ID = m1$cell_ID,
    new_column = sample(letters, 624, replace = TRUE)
)

setCellMetadata(gobject = g, x = createCellMetaObj(m2))
```

