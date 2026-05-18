# `giotto_schema` {#giotto_schema}

*Package:* `GiottoClass`  
*Title:* Giotto schema
*Aliases:* `spatUnit`, `spatUnit<-`, `featType`, `featType<-`, `objName`, `objName<-`, `prov`, `prov<-`, `spatUnit,ANY-method`, `spatUnit,giotto-method`, `spatUnit,list-method`, `spatUnit,spatData-method`, `spatUnit,giottoPolygon-method`, `spatUnit<-,ANY-method`, `spatUnit<-,spatData-method`, `spatUnit<-,giottoPolygon-method`, `spatUnit<-,list-method`, `spatUnit<-,giotto-method`, `featType,ANY-method`, `featType,giotto-method`, `featType,list-method`, `featType,featData-method`, `featType<-,ANY-method`, `featType<-,featData-method`, `featType<-,list-method`, `featType<-,giotto-method`, `objName,ANY-method`, `objName,list-method`, `objName,nameData-method`, `objName,giottoPoints-method`, `objName,giottoLargeImage-method`, `objName,giottoImage-method`, `objName<-,list-method`, `objName<-,nameData-method`, `objName<-,giottoImage-method`, `objName<-,giottoLargeImage-method`, `objName<-,giottoPoints-method`, `prov,provData-method`, `prov<-,provData-method`

## Description

Data within the `giotto` object is organized in a schema
largely revolving around the **spatial unit** (which spatial length scale or
polygonal annotation that is used as the unit of study) and the
**feature type** (data modality). Information is then further organized
based on the **name** or key of the object. In cases where a single
spatial unit is comprised of information from multiple others,
**provenance** is tracked to keep a record of which spatial units were the
sources of that data. The functions to get and set these aspects of the
schema on the Giotto object and subobjects are:
- **spatial unit:** `spatUnit()`, spatUnit<-()
- **feature type:** `featType()`, featType<-()
- **name:**         `objName()`, objName<-()
- **provenance:**   `prov()`, prov<-()

## Usage

```r
spatUnit,ANY-method(x)

spatUnit,giotto-method(x)

spatUnit,list-method(x)

spatUnit,spatData-method(x)

spatUnit,giottoPolygon-method(x)

spatUnit,ANY-method(x) <- value

spatUnit,spatData-method(x) <- value

spatUnit,giottoPolygon-method(x) <- value

spatUnit,list-method(x) <- value

spatUnit,giotto-method(x, old) <- value

featType,ANY-method(x)

featType,giotto-method(x)

featType,list-method(x)

featType,featData-method(x)

featType,ANY-method(x) <- value

featType,featData-method(x) <- value

featType,list-method(x) <- value

featType,giotto-method(x, old) <- value

objName,ANY-method(x)

objName,list-method(x)

objName,nameData-method(x)

objName,giottoPoints-method(x)

objName,giottoLargeImage-method(x)

objName,giottoImage-method(x)

objName,list-method(x) <- value

objName,nameData-method(x) <- value

objName,giottoImage-method(x) <- value

objName,giottoLargeImage-method(x) <- value

objName,giottoPoints-method(x) <- value

prov,provData-method(x)

prov,provData-method(x) <- value
```

## Arguments

- `x`: `giotto` or {Giotto} S4 subobject
- `value`: value to set for this schema component
- `old`: character. Old value to replace

## Value

character. NA is returned when schema component is not applicable
to target object. If using the replacement function, the `giotto` object
or subobject is returned

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

########### Get/set existing schema values within giotto object ####
spatUnit(g)
featType(g)

# rename a spatial unit
spatUnit(g, old = "z0") <- "slice1"
spatUnit(g)

# rename a feature type
featType(g, old = "rna") <- "feature1"
featType(g)

########### Get schema values from a list of objects ###############

glist <- as.list(g)
spatUnit(glist)
featType(glist)
objName(glist)

########### Get and set schema values with single subobject ########

fx <- g[["feat_meta", spat_unit = "aggregate"]][[1]]

spatUnit(fx)
spatUnit(fx) <- "foo"
spatUnit(fx)

featType(fx)
featType(fx) <- "bar"
featType(fx)

ex <- g[["expression", spat_unit = "aggregate"]][[1]]

objName(ex)
objName(ex) <- "baz"
objName(ex)

prov(ex)
prov(ex) <- "qux"
prov(ex)
```

