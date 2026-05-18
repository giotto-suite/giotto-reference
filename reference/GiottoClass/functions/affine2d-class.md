# `affine2d-class` {#affine2d-class}

*Package:* `GiottoClass`  
*Title:* Affine Transform Object
*Aliases:* `affine2d`

## Description

Container for accumulating 2D affine transformations. Simple spatial
transforms (`[spatShift()](=spatShift)`, `[spin()](=spin)`, `[rescale()](=rescale)`, `[flip()](=flip)`, `[t()](=t)`,
`[shear()](=shear)`) can be chained on an `affine2d` to build up a combined
transform, which is then applied to spatial objects in a single step via
`[affine()](=affine)`.

Create an identity `affine2d` with `affine()` (no arguments).
Before chaining centroid-relative operations (`spin()`,
`rescale()`) without explicit `x0`/`y0`, set
`ext(aff) <- ext(your_object)` so the pivot point matches your data.

The combined linear transform is stored as a 3x3 homogeneous matrix in
`@affine`. Translations are encoded in column 3 (rows 1-2). The
convention is post-multiply: `xy_out = xy_in %*% A`.

