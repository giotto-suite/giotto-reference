# `aggregateStacksLocations` {#aggregateStacksLocations}

*Package:* `GiottoClass`  
*Title:* aggregateStacksLocations

## Description

aggregate expression matrices from different z-stacks

## Usage

```r
aggregateStacksLocations(
  gobject,
  spat_units,
  values = "raw",
  summarize = "mean",
  new_spat_unit = "aggregate"
)
```

## Arguments

- `gobject`: giotto object
- `spat_units`: spatial units to aggregate
- `values`: values to use
- `summarize`: method to summarize spatial location information
- `new_spat_unit`: new name for aggregated spatial unit

## Value

giotto object

## See Also

Other aggregate stacks: 
`[aggregateStacks]()`,
`[aggregateStacksExpression]()`,
`[aggregateStacksPolygonOverlaps]()`,
`[aggregateStacksPolygons]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

aggregateStacksLocations(g, spat_units = c("z0", "z1"))
```

