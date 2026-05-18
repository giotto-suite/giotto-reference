# `aggregateStacksExpression` {#aggregateStacksExpression}

*Package:* `GiottoClass`  
*Title:* aggregateStacksExpression

## Description

aggregate expression matrices from different z-stacks

## Usage

```r
aggregateStacksExpression(
  gobject,
  spat_units,
  feat_type,
  values = "raw",
  summarize = "sum",
  new_spat_unit = "aggregate",
  verbose = TRUE
)
```

## Arguments

- `gobject`: giotto object
- `spat_units`: spatial units to aggregate
- `feat_type`: feature type
- `values`: values to use
- `summarize`: method to summarize expression information
- `new_spat_unit`: new name for aggregated spatial unit
- `verbose`: verbosity

## Value

giotto object

## See Also

Other aggregate stacks: 
`[aggregateStacks]()`,
`[aggregateStacksLocations]()`,
`[aggregateStacksPolygonOverlaps]()`,
`[aggregateStacksPolygons]()`

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

aggregateStacksExpression(g, spat_units = c("z0", "z1"), feat_type = "rna")
```

