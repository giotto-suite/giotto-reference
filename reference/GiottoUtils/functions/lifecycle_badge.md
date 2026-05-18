# `lifecycle_badge` {#lifecycle_badge}

*Package:* `GiottoUtils`  
*Title:* lifecycle badge

## Description

Generate markdown needed for lifecycle badges that help communicate stability
of functions in documentation when added in backticks as shown below.

html<div class="sourceCode">
```
 #' `r lifecycle::badge("experimental")`
 #' `r lifecycle::badge("deprecated")`
 #' `r lifecycle::badge("superseded")`

```
html</div>

## Usage

```r
lifecycle_badge(stage = "stable")
```

## Arguments

- `stage`: character. 'stable', 'experimental', 'deprecated', or 'superseded'

## Value

markdown

## See Also

Other lifecycle: 
`[reexports]`

## Examples

```r
lifecycle_badge()
```

