# `LouvainMultinetClusParam-class` {#LouvainMultinetClusParam-class}

*Package:* `Giotto`  
*Title:* Louvain Clustering
*Aliases:* `LouvainMultinetClusParam`

## Description

Cluster cells using a NN-network and the Louvain algorithm. This utilizes the
generalized Louvain implementation from  **multinet**.

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
clusterData(g, clusterParam("louvain_multinet"))
```

