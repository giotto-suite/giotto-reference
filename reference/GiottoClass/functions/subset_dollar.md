# `subset_dollar`

*Package:* `GiottoClass`  
*Title:* Subset part of an object with `$`
*Aliases:* ``$``, `$,giotto-method`, `$,coordDataDT-method`, `$,spatEnrObj-method`, `$,dimObj-method`, `$,metaData-method`, `$,terraVectData-method`, `$,affine2d-method`, `$,processParam-method`

## Description

Subset values from a Giotto Class using `$` operator.

## Usage

```r
$,giotto-method(x, name)

$,coordDataDT-method(x, name)

$,spatEnrObj-method(x, name)

$,dimObj-method(x, name)

$,metaData-method(x, name)

$,terraVectData-method(x, name)

$,affine2d-method(x, name)

$,processParam-method(x, name)
```

## Arguments

- `x`: Giotto S4 object to extract columns from
- `name`: A literal character string (possibly backtick quoted).
This is normally matched to the colnames.

## Value

vector of values from a requested column

## See Also

[subset_bracket](%5B%2CgiottoBinPoints%2Clogical%2Cmissing%2Cmissing-method.md) [replace_bracket](replace_bracket.md) [replace_dollar](replace_dollar.md)

## Examples

```r
enr <- GiottoData::loadSubObjectMini("spatEnrObj")

enr$cell_ID
```

