# `featIDs,giottoBinPoints-method` {#featIDs,giottoBinPoints-method}

*Package:* `GiottoClass`  
*Title:* Spatial and feature IDs
*Aliases:* `spatIDs-generic`, `spatIDs<-`, `spatIDs`, `featIDs`, `spatIDs,giotto-method`, `spatIDs,exprObj-method`, `spatIDs,spatLocsObj-method`, `spatIDs,cellMetaObj-method`, `spatIDs,spatialNetworkObj-method`, `spatIDs,dimObj-method`, `spatIDs,giottoPolygon-method`, `spatIDs<-,giottoPolygon-method`, `spatIDs,spatEnrObj-method`, `spatIDs,nnNetObj-method`, `featIDs,giotto-method`, `featIDs,exprObj-method`, `featIDs,featMetaObj-method`, `featIDs,giottoPoints-method`, `featIDs,spatEnrObj-method`

## Description

Get the cell/spot IDs
(termed spatial IDs to better reflect when not at the single-cell level)
and feature IDs of a giotto object or subobject.

[**`giotto` object specific**]
When applied on a `giotto` object, these functions pull from the `cell_ID`
and `feat_ID` slots. The values within these slots are updated whenever the
object is data is changed and, importantly, whenever the active spat_unit and
feat_type is set (see `[activeSpatUnit()](=activeSpatUnit)` and `[activeFeatType()](=activeFeatType)`). New values
for these slots are specific to the active spat_unit and feat_type and are
detected from either the *subcellular*
level (`giottoPolygon` and `giottoPoints`) or the *aggregate*
level (expression matrix) data, with a preference for the latter if it
exists. Be aware that with this current behavior, values returned
by`spatIDs()` and `featIDs()` should be regarded as the minimal set of
expected IDs within all `giotto` slots, and not always the exact set or
ordering.

## Usage

```r
featIDs,giottoBinPoints-method(x, uniques = TRUE, ...)

spatIDs,giotto-method(x, spat_unit = NULL, subset, negate = FALSE, quote = TRUE, ...)

spatIDs,exprObj-method(x, ...)

spatIDs,spatLocsObj-method(x, ...)

spatIDs,cellMetaObj-method(x, ...)

spatIDs,spatialNetworkObj-method(x, ...)

spatIDs,dimObj-method(x, ...)

spatIDs,giottoPolygon-method(x, use_cache = TRUE, uniques = TRUE, ...)

spatIDs,giottoPolygon-method(x, old = NULL, ...) <- value

spatIDs,spatEnrObj-method(x, ...)

spatIDs,nnNetObj-method(x, ...)

featIDs,giotto-method(x, feat_type = NULL, subset, negate = FALSE, quote = TRUE, ...)

featIDs,exprObj-method(x, ...)

featIDs,featMetaObj-method(x, ...)

featIDs,giottoPoints-method(x, use_cache = TRUE, uniques = TRUE, ...)

featIDs,spatEnrObj-method(x, ...)
```

## Arguments

- `x`: an object
- `uniques`: return unique ID values
only (currently gpoly and gpoints only)
- `...`: additional params to pass when used with the `subset` param.
For `spatID()`, these pass to `[spatValues()](=spatValues)`. For `featID()`, these
currently only pass to `fDataDT()`.
- `spat_unit`: (optional) specify which spatial unit
- `subset`: logical expression to find a subset of features.
- `negate`: logical. if `TRUE` all IDs that are **not** in the `subset`
are selected
- `quote`: logical. If `TRUE`, the `subset` param will be quoted with
`substitute()`. Set this to `FALSE` when calling from a function, although
that may not be recommended since NSE output can be unexpected when not used
interactively.
- `use_cache`: use cached IDs if available (gpoly and gpoints only)
- `old`: character. IDs to match against to replace
- `value`: character. IDs to replace with
- `feat_type`: (optional) specify which feature type

## Value

character vector of cell/spatial IDs or feature IDs

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
spatIDs(g)
spatIDs(g, subset = nr_feats <= 200)
spatIDs(g, subset = Dim.1 > 25, dim_reduction_to_use = "umap")

featIDs(g)
featIDs(g, subset = nr_cells < 100)

gpoints <- GiottoData::loadSubObjectMini("giottoPoints")
featIDs(gpoints)

# ID replacements (currently only giottoPolygons)
polys <- g[["spatial_info"]][[1]]
slot(polys, "overlaps") <- NULL # make NULL to avoid a warning
head(spatIDs(polys))
spatIDs(polys) <- paste0("poly_", seq_len(nrow(polys)))
head(spatIDs(polys))
spatIDs(polys, old = c("poly_1", "poly_3")) <- c("test1", "test2")
head(spatIDs(polys))
```

