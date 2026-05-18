# `replace_dollar` {#replace_dollar}

*Package:* `GiottoClass`  
*Title:* Replace part of an object with $<-
*Aliases:* ``$<-``, `$<-,giotto-method`, `$<-,coordDataDT-method`, `$<-,spatEnrObj-method`, `$<-,dimObj-method`, `$<-,metaData-method`, `$<-,terraVectData-method`, `$<-,processParam-method`

## Description

Replace values from Giotto Classes using $<- operator.

## Usage

```r
$,giotto-method(x, name) <- value

$,coordDataDT-method(x, name) <- value

$,spatEnrObj-method(x, name) <- value

$,dimObj-method(x, name) <- value

$,metaData-method(x, name) <- value

$,terraVectData-method(x, name) <- value

$,processParam-method(x, name) <- value
```

## Arguments

- `x`: Giotto S4 object to replace columns from
- `name`: A literal character string (possibly backtick quoted).
This is normally matched to the colnames.
- `value`: values(s) to set to a column

## Value

same as `x`

## See Also

[subset_bracket] [replace_bracket] [subset_dollar]

## Examples

```r
gpoints <- GiottoData::loadSubObjectMini("giottoPoints")

gpoints$new_col <- sprintf("feat_%d", seq(nrow(gpoints)))
```

