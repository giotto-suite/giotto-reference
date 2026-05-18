# `LouvainCommunityClusParam-class` {#LouvainCommunityClusParam-class}

*Package:* `Giotto`  
*Title:* Louvain Clustering
*Aliases:* `LouvainCommunityClusParam`

## Description

Cluster cells using a NN-network and the Louvain algorithm. This utilizes the
{community} package from python.

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
clusterData(g, clusterParam("louvain_community", resolution = 0.5))
```

