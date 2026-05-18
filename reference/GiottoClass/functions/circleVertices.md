# `circleVertices` {#circleVertices}

*Package:* `GiottoClass`  
*Title:* Generate circle polygon vertices

## Description

Generates vertex coordinates for a circle around (0,0) with the
given radius. Modified from **packcircles**.

## Usage

```r
circleVertices(radius, npoints = 25)
```

## Arguments

- `radius`: radius of circle to be drawn
- `npoints`: number of vertices to generate

## Value

a data.table of circle vertices

## See Also

[generate_grid]

Other polygon stamping: 
`[hexVertices]()`,
`[polyStamp]()`,
`[rectVertices]()`

## Examples

```r
circleVertices(radius = 10)
```

