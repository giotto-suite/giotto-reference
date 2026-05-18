# `processData` {#processData}

*Package:* `GiottoClass`  
*Title:* Data Processing

## Description

Generic for processing an object containing measured values.
Specific methods should be defined for this generic to
perform pre or post processing specific to a data class type. No methods
are exported from **GiottoClass**. The methods, which may
differ depending on the input data, are attached from other packages which
focus on analyses and/or alternative data representations with specific ways
to implement those analyses.

## Usage

```r
processData(x, param, ...)
```

## Arguments

- `x`: a data object
- `param`: a processParam inheriting object
- `...`: additional arguments, for use in specific methods

## Value

An object of the same class containing the processed values

