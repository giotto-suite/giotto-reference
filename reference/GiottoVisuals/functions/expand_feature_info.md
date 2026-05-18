# `expand_feature_info` {#expand_feature_info}

*Package:* `GiottoVisuals`  
*Title:* expand_feature_info

## Description

low level function to expand feature coordinates by adding
jitter to coordinates

## Usage

```r
expand_feature_info(
  spatial_feat_info,
  expand_counts = FALSE,
  count_info_column = "count",
  jitter = c(0, 0),
  verbose = TRUE
)
```

## Arguments

- `spatial_feat_info`: a data.table of spatial feature information
- `expand_counts`: logical. whether points should be expanded based on
count
- `jitter`: numeric vector. amount of jitter to add
- `verbose`: be verbose

## Value

data.table

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
x <- GiottoClass::getFeatureInfo(g)
x <- data.table::as.data.table(x)
```

