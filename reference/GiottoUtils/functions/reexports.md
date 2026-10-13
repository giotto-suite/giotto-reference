# `reexports`

*Package:* `GiottoUtils`  
*Title:* Objects exported from other packages
*Aliases:* `fromJSON`, `read_json`, `deprecated`, `is_present`, `deprecate_soft`, `deprecate_warn`, `deprecate_stop`, `mixedsort`, `mixedorder`

## Description

These objects are imported from other packages. Follow the links
below to see their documentation.

- **gtools**: `mixedorder()`, `mixedsort()`
- **jsonlite**: `fromJSON()`, `read_json()`
- **lifecycle**: `deprecate_soft()`, `deprecate_stop()`, `deprecate_warn()`, `deprecated()`, `is_present()`

## Value

argument marked as deprecated

boolean

NULL, invisibly.

NULL, invisibly.

NULL, invisibly.

A sorted vector

vector giving the sort order of the input elements

## See Also

Other lifecycle:
[`lifecycle_badge()`](lifecycle_badge.md)

## Examples

```r
jsoncars <- jsonlite::toJSON(mtcars, pretty = TRUE)
fromJSON(jsoncars)
```

