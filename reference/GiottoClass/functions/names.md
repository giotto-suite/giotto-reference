# `names` {#names}

*Package:* `GiottoClass`  
*Title:* Names of objects
*Aliases:* `names,giottoLargeImage-method`, `names<-,giottoLargeImage-method`, `names,processParam-method`, `names<-,processParam-method`, `names,giottoPoints-method`

## Description

Get or set the names of the layers of a `giottoLargeImage`

## Usage

```r
names,giottoLargeImage-method(x)

names,giottoLargeImage-method(x) <- value

names,processParam-method(x)

names,processParam-method(x) <- value

names,giottoPoints-method(x)
```

## Arguments

- `x`: object
- `value`: character. Name(s) to set in the object

## Value

character or the object being renamed if the replacement function
is used.

## Examples

```r
img <- GiottoData::loadSubObjectMini("giottoLargeImage")
names(img)
names(img) <- "dapi"
```

