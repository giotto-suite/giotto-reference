# `activeSpatUnit-generic` {#activeSpatUnit-generic}

*Package:* `GiottoClass`  
*Title:* Active spatial unit
*Aliases:* `activeSpatUnit`, `activeSpatUnit<-`, `activeSpatUnit,giotto-method`, `activeSpatUnit<-,giotto,character-method`

## Description

Retrieve or set the active spatial unit. This value will be the
default spatial unit that the giotto object uses.

## Usage

```r
activeSpatUnit,giotto-method(gobject)

activeSpatUnit,giotto,character-method(gobject) <- value
```

## Arguments

- `gobject`: giotto object
- `value`: spat_unit to set as default

## Value

active spatial unit

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
activeSpatUnit(g)
```

