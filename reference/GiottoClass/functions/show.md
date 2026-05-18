# `show` {#show}

*Package:* `GiottoClass`  
*Title:* Show methods for Giotto classes
*Aliases:* `show,giotto-method`, `show,packedGiotto-method`, `show,exprObj-method`, `show,cellMetaObj-method`, `show,featMetaObj-method`, `show,dimObj-method`, `show,nnNetObj-method`, `show,spatLocsObj-method`, `show,spatialNetworkObj-method`, `show,spatialGridObj-method`, `show,spatEnrObj-method`, `show,giottoPolygon-method`, `show,packedGiottoPolygon-method`, `show,giottoPoints-method`, `show,packedGiottoPoints-method`, `show,giottoImage-method`, `show,giottoLargeImage-method`, `show,affine2d-method`

## Description

Show methods for Giotto classes

## Usage

```r
show,giotto-method(object)

show,packedGiotto-method(object)

show,exprObj-method(object)

show,cellMetaObj-method(object)

show,featMetaObj-method(object)

show,dimObj-method(object)

show,nnNetObj-method(object)

show,spatLocsObj-method(object)

show,spatialNetworkObj-method(object)

show,spatialGridObj-method(object)

show,spatEnrObj-method(object)

show,giottoPolygon-method(object)

show,packedGiottoPolygon-method(object)

show,giottoPoints-method(object)

show,packedGiottoPoints-method(object)

show,giottoImage-method(object)

show,giottoLargeImage-method(object)

show,affine2d-method(object)
```

## Arguments

- `object`: object to show

## Value

giotto slot

## Examples

```r
sl <- data.frame(seq(10), seq(10), letters[seq(10)]) |>
    createSpatLocsObj(verbose = FALSE)
show(sl)
```

