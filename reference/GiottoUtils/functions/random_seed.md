# `random_seed` {#random_seed}

*Package:* `GiottoUtils`  
*Title:* Set a random seed

## Description

From reproducible package, set.randomseed()  

Convenient function for applying a random seed. Usually used with
`on.exit()` when a specified seed is applied so that non-random operations
do not interfere with other aspects of a user's work. May also be called with
`set.seed = TRUE` to simply return a random seed to use, without actually
having applied it.

## Usage

```r
random_seed(set.seed = TRUE)
```

## Arguments

- `set.seed`: Whether to apply the random seed. Defaults to TRUE

## Value

The seed value is returned invisibly

## Examples

```r
random_seed()
```

