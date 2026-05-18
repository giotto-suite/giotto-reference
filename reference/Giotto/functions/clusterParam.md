# `clusterParam` {#clusterParam}

*Package:* `Giotto`  
*Title:* Clustering Parameter Classes

## Description

Factory function for creating param classes extending
[bluster::BlusterParam](bluster:BlusterParam-class) to be used with `[clusterData()](=clusterData)`. These param
classes define the clustering operation to be performed and also contain
relevant parameters in an easily accessible format.

## Usage

```r
clusterParam(method, ...)
```

## Arguments

- `method`: character. Parameter class to generate
- `...`: additional params to pass to the param class creator.

## See Also

`[clusterData()](=clusterData)`

## Examples

```r
x <- clusterParam("kmeans", centers = 2)
x@centers

m <- matrix(runif(9), nrow = 3)
clusterData(m, x)
# add ids
rownames(m) <- paste("id", seq_len(3), sep = "_")
clusterData(m, x)
```

