# `set_default_spat_unit` {#set_default_spat_unit}

*Package:* `GiottoClass`  
*Title:* set_default_spat_unit

## Description

Function to guess a default spatial unit. Also see `[activeSpatUnit()](=activeSpatUnit)` in
methods-instructions.R for a way to manually assign this default

## Usage

```r
set_default_spat_unit(gobject, spat_unit = NULL)
```

## Arguments

- `gobject`: giotto object
- `spat_unit`: spatial unit (e.g. "cell")

## Value

character

## Examples

```r
g <- createGiottoObject()

set_default_spat_unit(gobject = g, spat_unit = "cell")
```

