# `seuratToGiotto` {#seuratToGiotto}

*Package:* `GiottoClass`  
*Title:* Deprecated

## Description

Deprecated. Please use either [seuratToGiottoV4] or
[seuratToGiottoV5]

## Usage

```r
seuratToGiotto(
  sobject,
  spatial_assay = "Spatial",
  dim_reduction = c("pca", "umap"),
  subcellular_assay = "Vizgen"
)
```

## Arguments

- `sobject`: Input Seurat object to convert to Giotto object
- `spatial_assay`: Specify name of the spatial assay slot in Seurat.
Default is `"Spatial"`.
- `dim_reduction`: Specify which dimensional reduction computations to
fetch from
- `subcellular_assay`: Specify name of the subcellular assay in input
object. Default is `"Vizgen"`.

## Value

giotto object

