# `giottoLargeImage-class` {#giottoLargeImage-class}

*Package:* `GiottoClass`  
*Title:* S4 giottoLargeImage Class
*Aliases:* `giottoLargeImage`

## Description

Image class for Giotto that uses **terra** `SpatRaster` as
a backend. If images are loaded from a file on disk then they are worked
with lazily, where only the values needed at any moment are loaded/sampled
into memory. Since `SpatRaster` objects are C pointers, `giottoLargeImage`
and inheriting classes need to run `reconnect()` after loading from a
saved object.

## Value

giottoLargeImage

## Examples

```r
giottoLargeImage()
```

