# `as.character` {#as.character}

*Package:* `GiottoClass`  
*Title:* Create a text representation of an object
*Aliases:* `as.character,giottoImage-method`, `as.character,svkey-method`, `as.character,giottoLargeImage-method`

## Description

Create a text representation of an object

## Usage

```r
as.character,giottoImage-method(x, ...)

as.character,svkey-method(x, ...)

as.character,giottoLargeImage-method(x, ...)
```

## Arguments

- `x`: object
- `...`: additional params to pass (none implemented)

## Value

character

## Examples

```r
img <- GiottoData::loadSubObjectMini("giottoLargeImage")
as.character(img)
```

