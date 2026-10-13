# `setSpatialEnrichment`

*Package:* `GiottoClass`  
*Title:* Set spatial enrichment

## Description

Function to set a spatial enrichment slot

## Usage

```r
setSpatialEnrichment(
  gobject,
  x,
  spat_unit = NULL,
  feat_type = NULL,
  name = "enrichment",
  provenance = NULL,
  verbose = TRUE,
  initialize = TRUE,
  ...
)
```

## Arguments

- `gobject`: giotto object
- `x`: spatEnrObj or list of spatEnrObj to set. Passing NULL will remove
a specified set of spatial enrichment information from the gobject.
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `name`: name of spatial enrichment results. Default "DWLS"
- `provenance`: provenance information (optional)
- `verbose`: be verbose
- `initialize`: (default = FALSE) whether to initialize the gobject before
returning
- `...`: additional params to pass

## Value

giotto object

## See Also

Other spatial enrichment data accessor functions: 
[`getSpatialEnrichment()`](getSpatialEnrichment.md)

Other functions to set data in giotto object: 
[`setCellMetadata()`](setCellMetadata.md),
[`setDimReduction()`](setDimReduction.md),
[`setExpression()`](setExpression.md),
[`setFeatureInfo()`](setFeatureInfo.md),
[`setFeatureMetadata()`](setFeatureMetadata.md),
[`setGiotto,giotto,giottoBinPoints-method`](setGiotto%2Cgiotto%2CgiottoBinPoints-method.md),
[`setGiottoImage()`](setGiottoImage.md),
[`setMultiomics()`](setMultiomics.md),
[`setNearestNetwork()`](setNearestNetwork.md),
[`setPolygonInfo()`](setPolygonInfo.md),
[`setSpatialGrid()`](setSpatialGrid.md),
[`setSpatialLocations()`](setSpatialLocations.md),
[`setSpatialNetwork()`](setSpatialNetwork.md),
[`set_multiomics()`](set_multiomics.md)

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
spatenrich <- GiottoData::loadSubObjectMini("spatEnrObj")

g <- setSpatialEnrichment(g, spatenrich)
```

