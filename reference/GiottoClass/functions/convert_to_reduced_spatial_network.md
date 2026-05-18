# `convert_to_reduced_spatial_network` {#convert_to_reduced_spatial_network}

*Package:* `GiottoClass`  
*Title:* convert_to_reduced_spatial_network

## Description

Convert to a reduced spatial network. Specifically, removes
the duplicated connections so that only `a` -> `b` interactions
remain.

## Usage

```r
convert_to_reduced_spatial_network(full_spatial_network_DT)
```

## Arguments

- `full_spatial_network_DT`: full spatial network in data.table format

## Value

data.table

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
spat_net <- getSpatialNetwork(g, output = "networkDT")
spat_net_full <- convert_to_full_spatial_network(spat_net)

convert_to_reduced_spatial_network(spat_net_full)
```

