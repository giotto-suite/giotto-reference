# `aggregateStacksPolygons` {#aggregateStacksPolygons}

*Package:* `GiottoClass`  
*Title:* aggregateStacksPolygons

## Description

aggregate polygons from different z-stacks

## Usage

```r
aggregateStacksPolygons(
  gobject,
  spat_units,
  new_spat_unit = "aggregate",
  for_loop = FALSE,
  for_loop_group_size = 100
)
```

## Arguments

- `gobject`: giotto object
- `spat_units`: spatial units to aggregate
- `new_spat_unit`: new name for aggregated spatial unit
- `for_loop`: aggregate polygons in for loop (default = FALSE)
- `for_loop_group_size`: size of polygon groups to aggregate in each loop

## Value

giotto object

## See Also

Other aggregate stacks: 
`[aggregateStacks]()`,
`[aggregateStacksExpression]()`,
`[aggregateStacksLocations]()`,
`[aggregateStacksPolygonOverlaps]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

aggregateStacksPolygons(g, spat_units = c("z0", "z1"))
```

