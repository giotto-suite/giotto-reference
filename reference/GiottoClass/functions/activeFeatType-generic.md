# `activeFeatType-generic` {#activeFeatType-generic}

*Package:* `GiottoClass`  
*Title:* Active feature type
*Aliases:* `activeFeatType`, `activeFeatType<-`, `activeFeatType,giotto-method`, `activeFeatType<-,giotto,character-method`

## Description

Retrieve or set the active feature type. This value will be the
default feature type that the giotto object uses.

## Usage

```r
activeFeatType,giotto-method(gobject)

activeFeatType,giotto,character-method(gobject) <- value
```

## Arguments

- `gobject`: giotto object
- `value`: feat_type to set as default

## Value

active feature type

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")
activeFeatType(g)
```

