# `r_spatial_conversions` {#r_spatial_conversions}

*Package:* `GiottoClass`  
*Title:* R spatial conversions
*Aliases:* `as.sf`, `as.sp`, `as.stars`, `as.terra`, `as.sp,sf-method`, `as.sp,SpatVector-method`, `as.sp,stars-method`, `as.sp,Spatial-method`, `as.sp,giottoPolygon-method`, `as.sp,giottoPoints-method`, `as.sf,SpatVector-method`, `as.sf,Spatial-method`, `as.sf,stars-method`, `as.sf,sf-method`, `as.sf,giottoPolygon-method`, `as.sf,giottoPoints-method`, `as.stars,SpatVector-method`, `as.stars,sf-method`, `as.stars,Spatial-method`, `as.stars,stars-method`, `as.stars,giottoPolygon-method`, `as.stars,giottoPoints-method`, `as.terra,SpatVector-method`, `as.terra,sf-method`, `as.terra,stars-method`, `as.terra,Spatial-method`, `as.terra,giottoPolygon-method`, `as.terra,giottoPoints-method`

## Description

R spatial conversions

## Usage

```r
as.sp,sf-method(x)

as.sp,SpatVector-method(x)

as.sp,stars-method(x)

as.sp,Spatial-method(x)

as.sp,giottoPolygon-method(x, drop = TRUE)

as.sp,giottoPoints-method(x, drop = TRUE)

as.sf,SpatVector-method(x)

as.sf,Spatial-method(x)

as.sf,stars-method(x)

as.sf,sf-method(x)

as.sf,giottoPolygon-method(x, drop = TRUE)

as.sf,giottoPoints-method(x, drop = TRUE)

as.stars,SpatVector-method(x)

as.stars,sf-method(x)

as.stars,Spatial-method(x)

as.stars,stars-method(x)

as.stars,giottoPolygon-method(x, drop = TRUE)

as.stars,giottoPoints-method(x, drop = TRUE)

as.terra,SpatVector-method(x)

as.terra,sf-method(x)

as.terra,stars-method(x, type = c("vector", "raster"))

as.terra,Spatial-method(x)

as.terra,giottoPolygon-method(x, drop = TRUE)

as.terra,giottoPoints-method(x, drop = TRUE)
```

## Arguments

- `x`: The object to coerce
- `drop`: When TRUE, returned object will be of the desired object type
instead of wrapped in a `giottoPoints` or `giottoPolygon` object
- `type`: whether data is 'vector' or 'raster'

## Value

sf, sp, stars or terra

## See Also

Other As coercion functions: 
`[as.data.table.giottoBinPoints]()`,
`[as.matrix]()`,
`[as.points]()`,
`[as.polygons]()`

## Examples

```r
g <- GiottoData::loadSubObjectMini("giottoPoints")

as.sf(g)
```

