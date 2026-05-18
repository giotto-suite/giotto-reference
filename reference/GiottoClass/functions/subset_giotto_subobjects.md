# `subset_giotto_subobjects` {#subset_giotto_subobjects}

*Package:* `GiottoClass`  
*Title:* Subset `giotto` subobjects
*Aliases:* ``[[.giotto``, `[[,giotto,missing,missing-method`, `[[,giotto,character,missing-method`, `[[,giotto,missing,character-method`, `[[,giotto,character,character-method`

## Description

Subset a `giotto` object with `[[` to disassemble it into a list of Giotto
S4 subobjects. If `drop` is `FALSE`, the selected subobjects
will be reassembled into a new `giotto` object. Note that indexing within
the `[[` filters for only those subobjects that have those attributes.
This may remove some unexpected information. For specifically splitting the
`giotto` object by spatial unit and/or feature type while keeping all
expected information, use `[sliceGiotto()](=sliceGiotto)`

## Usage

```r
[[,giotto,missing,missing-method(x, spat_unit = NULL, feat_type = NULL, drop = TRUE, ...)

[[,giotto,character,missing-method(x, i, spat_unit = NULL, feat_type = NULL, drop = TRUE, ...)

[[,giotto,missing,character-method(x, j, spat_unit = NULL, feat_type = NULL, drop = TRUE, ...)

[[,giotto,character,character-method(x, i, j, spat_unit = NULL, feat_type = NULL, drop = TRUE, ...)
```

## Arguments

- `x`: giotto object
- `spat_unit`: spatial unit (e.g. "cell")
- `feat_type`: feature type to use (e.g. "rna", "protein")
- `drop`: logical. Default = TRUE
- `...`: additional arguments
- `i`: character. Indicates the slot name
- `j`: character. Indicates the subobject name

## Value

giotto subobject

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
force(g)

# return as lists of subobjects with drop = TRUE (default)
g[[, "raw"]]
g[["expression", spat_unit = "aggregate"]]

# return as a subset giotto object with drop = FALSE
g[[, "raw", drop = FALSE]]
g[[spat_unit = "aggregate", drop = FALSE]]
```

