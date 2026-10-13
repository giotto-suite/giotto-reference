# `hexVertices`

*Package:* `GiottoClass`  
*Title:* Generate regular hexagon vertices

## Description

Generates vertex coordinates for a regular hexagon.

## Usage

```r
hexVertices(radius, major_axis = c("v", "h"))
```

## Arguments

- `radius`: radius of the hexagon
- `major_axis`: orientation of the major axis 'v' is vertical (default)
and 'h' is horizontal

## Value

a data.table of regular hexagon vertices

## See Also

[generate_grid](generate_grid.md)

Other polygon stamping: 
[`circleVertices()`](circleVertices.md),
[`polyStamp()`](polyStamp.md),
[`rectVertices()`](rectVertices.md)

## Examples

```r
hexVertices(radius = 10)
```

