# `LeidenIgraphClusParam-class` {#LeidenIgraphClusParam-class}

*Package:* `Giotto`  
*Title:* Leiden Clustering
*Aliases:* `LeidenIgraphClusParam`

## Description

Cluster cells using a NN-network and the Leiden community detection
algorithm as implemented in igraph.

## Details

This function is a wrapper for the Leiden algorithm implemented in igraph,
which can detect communities in graphs of millions of nodes (cells),
as long as they can fit in memory. See `[cluster_leiden](igraph)`
for more information.

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
clusterData(g, clusterParam("leiden_igraph", resolution = 0.5))
```

