# `create_giotto_points_object` {#create_giotto_points_object}

*Package:* `GiottoClass`  
*Title:* Create giotto points object

## Description

Create giotto points object

## Usage

```r
create_giotto_points_object(
  feat_type = "rna",
  spatVector = NULL,
  networks = NULL,
  unique_IDs = NULL
)
```

## Arguments

- `feat_type`: feature type
- `spatVector`: terra spatVector object containing point data
- `networks`: (optional) feature network object
- `unique_IDs`: (optional) unique IDs in spatVector for cacheing

## Value

giotto_points_object

