# `annotateSpatialGrid` {#annotateSpatialGrid}

*Package:* `GiottoClass`  
*Title:* annotateSpatialGrid

## Description

annotate spatial grid with cell ID and cell metadata (optional)

## Usage

```r
annotateSpatialGrid(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  spat_loc_name = "raw",
  spatial_grid_name = "spatial_grid",
  cluster_columns = NULL
)
```

## Arguments

- `gobject`: Giotto object
- `spat_unit`: spatial unit
- `feat_type`: feature type
- `spat_loc_name`: name of spatial locations
- `spatial_grid_name`: name of spatial grid,
see `[showGiottoSpatGrids]`
- `cluster_columns`: names of cell metadata, see `[pDataDT]`

## Value

annotated spatial grid data.table

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
g <- createSpatialGrid(g, sdimx_stepsize = 5, sdimy_stepsize = 5)

annotateSpatialGrid(g)
```

