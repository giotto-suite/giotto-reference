# `create_giotto` {#create_giotto}

*Package:* `GiottoClass`  
*Title:* Create a giotto object
*Aliases:* `createGiottoObject`, `createGiottoObjectSubcellular`

## Description

`giotto` objects can represent and work with datasets that are:
- Already aggregated *(in the form of a pair of expression matrix and spatial
centroids) + (optional) associated analyses*
- Subcellular *(polygon/mask annotations and point detections
e.g. transcripts or polygon/mask annotations and raw intensity staining
images (e.g. protein stains)). + (optional) associated aggregate data*
- Multiple sets/combinations of the previous two belonging to the same
experiment, organized by [giotto_schema]


A `giotto` analysis object can be generated in several ways:
- In one step *(with `createGiottoObject()` and input data)*.
- A piecewise manner where you start with just an empty `giotto` object
that you append to *(either using `createGiottoObject()` with no params or
a call to the class  constructor function `giotto()` - see piecewise
creation section and examples)*.
- Via technology specific convenience functions *(exported from {Giotto})*


See <https://giotto-suite.github.io/Giotto_website/articles/object_creation.html>
for more information. The details sections here also expand on the above
options.

## Usage

```r
createGiottoObject(
  expression,
  expression_feat = "rna",
  spatial_locs = NULL,
  spatial_info = NULL,
  calc_poly_centroids = FALSE,
  centroids_to_spatlocs = FALSE,
  feat_info = NULL,
  cell_metadata = NULL,
  feat_metadata = NULL,
  spatial_network = NULL,
  spatial_grid = NULL,
  spatial_grid_name = NULL,
  spatial_enrichment = NULL,
  dimension_reduction = NULL,
  nn_network = NULL,
  images = NULL,
  largeImages = NULL,
  offset_file = NULL,
  instructions = NULL,
  cores = determine_cores(),
  raw_exprs = NULL,
  expression_matrix_class = c("dgCMatrix", "DelayedArray"),
  h5_file = NULL,
  verbose = FALSE
)

createGiottoObjectSubcellular(
  gpolygons = NULL,
  polygon_mask_list_params = NULL,
  polygon_dfr_list_params = NULL,
  gpoints = NULL,
  cell_metadata = NULL,
  feat_metadata = NULL,
  spatial_network = NULL,
  spatial_network_name = NULL,
  spatial_grid = NULL,
  spatial_grid_name = NULL,
  spatial_enrichment = NULL,
  spatial_enrichment_name = NULL,
  dimension_reduction = NULL,
  nn_network = NULL,
  images = NULL,
  largeImages = NULL,
  largeImages_list_params = NULL,
  instructions = NULL,
  cores = NA,
  verbose = FALSE
)
```

## Arguments

- `expression`: expression information
- `expression_feat`: available features (e.g. rna, protein, ...)
- `spatial_locs`: data.table or data.frame with coordinates for cell
centroids
- `spatial_info`: list of giotto polygon objects with spatial information,
see `[createGiottoPolygonsFromMask]`
and `[createGiottoPolygonsFromDfr]`
- `calc_poly_centroids`: if spatial_info is provided, whether to also
calculate centroids
- `centroids_to_spatlocs`: if spatial_info is provided, whether to also
convert centroids to spatial locations
- `feat_info`: list of giotto point objects with feature info,
see `[createGiottoPoints]`
- `cell_metadata`: cell annotation metadata
- `feat_metadata`: feature annotation metadata for each unique feature
- `spatial_network`: list of spatial network(s)
- `spatial_grid`: list of spatial grid(s)
- `spatial_grid_name`: list of spatial grid name(s)
- `spatial_enrichment`: list of spatial enrichment score(s) for each
spatial region
- `dimension_reduction`: list of dimension reduction(s)
- `nn_network`: list of nearest neighbor network(s)
- `images`: list of images
- `largeImages`: deprecated
- `offset_file`: file used to stitch fields together (optional)
- `instructions`: list of instructions or output result
from `[createGiottoInstructions]`
- `cores`: how many cores or threads to use to read data if paths are
provided
- `raw_exprs`: deprecated, use expression
- `expression_matrix_class`: class of expression matrix to
use (e.g. 'dgCMatrix', 'DelayedArray')
- `h5_file`: path to h5 file
- `verbose`: be verbose when building Giotto object
- `gpolygons`: giotto polygons
- `polygon_mask_list_params`: list parameters
for `[createGiottoPolygonsFromMask]`
- `polygon_dfr_list_params`: list parameters
for `[createGiottoPolygonsFromDfr]`
- `gpoints`: giotto points
- `spatial_network_name`: list of spatial network name(s)
- `spatial_enrichment_name`: list of spatial enrichment name(s)
- `largeImages_list_params`: image params when loading largeImages as list

## Value

`giotto` object

## Examples

```r
# create an empty object
g <- createGiottoObject
# (can also use the class generator function)
g <- giotto()

# create an object containing an expression matrix
expr_matrix <- readRDS(system.file("extdata/toy_matrix.RDS",
    package = "GiottoClass"
))

createGiottoObject(expression = expr_matrix)

x_gpolygons <- GiottoData::loadSubObjectMini("giottoPolygon")
x_gpoints <- GiottoData::loadSubObjectMini("giottoPoints")

createGiottoObjectSubcellular(
    gpolygons = x_gpolygons,
    gpoints = x_gpoints
)
```

