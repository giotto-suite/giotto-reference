# `rectVertices` {#rectVertices}

*Package:* `GiottoClass`  
*Title:* Generate rectangular polygon vertices

## Description

Generates vertex coordinates for a rectangle with dimensions
given through `dims` param.

## Usage

```r
rectVertices(dims)
```

## Arguments

- `dims`: named vector in the style of c(x = `numeric`,
y = `numeric`) that defines the width (x) and height (y) of the
generated rectangle polygon.

## Value

a data.table of rectangle vertices

## See Also

[generate_grid]

Other polygon stamping: 
`[circleVertices]()`,
`[hexVertices]()`,
`[polyStamp]()`

## Examples

```r
rectVertices(c(x = 1, y = 2))
```

