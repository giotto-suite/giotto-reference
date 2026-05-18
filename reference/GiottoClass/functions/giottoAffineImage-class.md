# `giottoAffineImage-class` {#giottoAffineImage-class}

*Package:* `GiottoClass`  
*Title:* S4 giottoAffineImage Class

## Description

Class extending `giottoLargeImage`. When `shear()` or `spin()` operations
are performed on a `giottoLargeImage`, this class is instantiated. It
provides a way of storing the affine transformation and also lazily
performing it when required for a plotting preview. It is possible to force
the deferred affine transform using `doDeferred()` and return a processed
`giottoLargeImage`.

## Value

`giottoAffineImage`

