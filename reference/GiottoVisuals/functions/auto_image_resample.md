# `auto_image_resample` {#auto_image_resample}

*Package:* `GiottoVisuals`  
*Title:* Optimized image resampling
*Aliases:* `.auto_resample_gimage`

## Description

Downsample terra-based images for plotting. Uses `[window](terra)`
to set a virtual reading window on the image before calling
`[spatSample](terra)`, so only the relevant spatial ROI is read
from disk. This avoids materializing a crop to disk for large ROIs while
still focusing sampling on the plot region.

## Usage

```r
.auto_resample_gimage(
  img,
  plot_ext = NULL,
  img_border = 0.125,
  sample_fun = .sample_gimage,
  max_sample = getOption("giotto.plot_img_max_sample", 5e+05)
)
```

## Arguments

- `img`: giotto image to plot
- `plot_ext`: extent of plot (defaults to the image extent)
- `img_border`: numeric. Default = 0.125. If greater than 0, expand
`plot_ext` by this fraction on each side before setting the window. See
details.
- `max_sample`: numeric. Default = 5e5. Maximum number of values to sample
from the image. Globally settable with option "giotto.plot_img_max_sample"

## Value

a giotto image resampled within the plot window

## Details

**img_border**
Expands the window extent used for reading the image. This prevents the
image from being cut off sharply at the plot boundary, since plot extents
are typically defined by centroids and polygons may hang over the edge.

## See Also

`[window](terra)`, `[spatSample](terra)`

## Examples

```r
img <- GiottoData::loadSubObjectMini("giottoLargeImage")
.auto_resample_gimage(img)
```

