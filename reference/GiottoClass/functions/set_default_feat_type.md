# `set_default_feat_type` {#set_default_feat_type}

*Package:* `GiottoClass`  
*Title:* set_default_feat_type

## Description

Function to guess a default feature type. Also see `[activeFeatType()](=activeFeatType)` in
methods-instructions.R for a way to manually assign this default

## Usage

```r
set_default_feat_type(gobject, feat_type = NULL, spat_unit)
```

## Arguments

- `gobject`: giotto object
- `feat_type`: feature type (e.g. "rna", "dna", "protein")
- `spat_unit`: spatial unit (e.g. "cell")

## Value

character

## Examples

```r
g <- createGiottoObject()

set_default_feat_type(gobject = g, spat_unit = "cell", feat_type = "rna")
```

