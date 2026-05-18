# `sankeyRelate` {#sankeyRelate}

*Package:* `GiottoVisuals`  
*Title:* Set a relation between two sankey sets
*Aliases:* `sankeyRelate<-`, `sankeyRelate,giottoSankeyPlan-method`, `sankeyRelate<-,giottoSankeyPlan,logical,data.frame-method`, `sankeyRelate<-,giottoSankeyPlan,logical,numeric-method`, `sankeyRelate<-,giottoSankeyPlan,logical,character-method`, `sankeyRelate<-,giottoSankeyPlan,missing,ANY-method`, `sankeyRelate<-,giottoSankeyPlan,missing,NULL-method`

## Description

Set a relation to be compared across two sets of metadata annotations in the
Giotto object.

## Usage

```r
sankeyRelate,giottoSankeyPlan-method(x, ...)

sankeyRelate,giottoSankeyPlan,logical,data.frame-method(x, add) <- value

sankeyRelate,giottoSankeyPlan,logical,numeric-method(x, add) <- value

sankeyRelate,giottoSankeyPlan,logical,character-method(x, add) <- value

sankeyRelate,giottoSankeyPlan,missing,ANY-method(x) <- value

sankeyRelate,giottoSankeyPlan,missing,NULL-method(x) <- value
```

## Arguments

- `x`: giottoSankeyPlan object
- `...`: additional params to pass
- `add`: logical. whether relation to add through `value` should be
appended or replace all existing relations
- `value`: numerical vector (zero indexed) of sets to compare

## Value

giottoSankeyPlan

