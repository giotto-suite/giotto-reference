# `LeidenPythonClusParam-class` {#LeidenPythonClusParam-class}

*Package:* `Giotto`  
*Title:* Leiden Clustering
*Aliases:* `LeidenPythonClusParam`

## Description

Cluster cells using a NN-network and the Leiden community detection algorithm
This version is implemented via the python package **leidenalg**.

## Details

This implementation is a wrapper for the Leiden algorithm implemented in python,
which can detect communities in graphs of millions of nodes (cells),
as long as they can fit in memory. See the
[leidenalg](https://github.com/vtraag/leidenalg)
github page or the
[readthedocs](https://leidenalg.readthedocs.io/en/stable/index.html)
page for more information.

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
clusterData(g, clusterParam("leiden_python", resolution = 0.5))
```

