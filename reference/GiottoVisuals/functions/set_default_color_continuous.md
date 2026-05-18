# `set_default_color_continuous` {#set_default_color_continuous}

*Package:* `GiottoVisuals`  
*Title:* Set a default color for continuous values
*Aliases:* `set_default_color_continuous_cell`, `set_default_color_continuous_poly`, `set_default_color_continuous_heatmap`, `set_default_color_continuous_CCcom_heatmap`, `set_default_color_continuous_CCcom_dotplot`

## Description

Generates a gradient color palette based on input to `colors` param. Sets a
default gradient if `NULL` is passed.
`midpoint` param only supplied when using color scale with 3 colors.  
  


Supports colors setting at four levels:
- **type specific defaults** - defaults for a specific feature or type of
plot can be passed through `data_default` param
- **global options** (general session setting with blanket color palette
type effects)

 options('giotto.color_cd_pal) - default continuous divergent palette
is blue, white, red, for sequential ('giotto.color_cs_pal), it is
'viridis'
 options('giotto.color_c_rev) - whether colors should be reversed
- **giotto instructions** (gobject specific and effects specific types of
plots)

 run `showColorInstructions()` for details on options/params to set in
the `giottoInstructions` object
- **function specific** (directly pass desired colors to plotting function)

## Usage

```r
set_default_color_continuous(
  colors = NULL,
  midpoint = NULL,
  style = c("divergent", "sequential"),
  ...,
  instr_pal,
  instr_rev,
  data_default = NULL,
  type = c("fill", "color")
)

set_default_color_continuous_cell(
  colors = NULL,
  instrs,
  midpoint = NULL,
  style = "divergent",
  ...,
  data_default = NULL
)

set_default_color_continuous_poly(
  colors = NULL,
  instrs,
  midpoint = NULL,
  style = "divergent",
  ...
)

set_default_color_continuous_heatmap(
  colors = NULL,
  instrs,
  midpoint = NULL,
  style = "divergent",
  ...
)

set_default_color_continuous_CCcom_heatmap(
  colors = NULL,
  instrs,
  midpoint = NULL,
  style = "divergent",
  ...
)

set_default_color_continuous_CCcom_dotplot(
  colors = NULL,
  instrs,
  midpoint = NULL,
  style = "divergent",
  ...,
  type = c("fill", "color"),
  data_default = list(pal = c("darkblue", "blue", "white", "red", "darkred"))
)
```

## Arguments

- `colors`: character or `NULL`. 2 to n number of hex color codes or 1
single name of a palette to use can be passed
- `midpoint`: numeric. midpoint value of color gradient
- `style`: scale color scale around `midpoint` (divergent) or starting from
minimum value (sequential)
- `...`: additional params to pass to respective ggplot fill_gradient
functions
- `instr_pal, instr_rev`: used by upstream function to pass specific
`giottoInstructions` params
- `data_default`: data type (e.g. cells, polys, heatmap) specific default
colors to use
- `type`: whether setting is for ggplot2 'fill' or 'color' type function
- `instrs`: `giottoInstructions` object (output of `instructions(gobject)`)

## Value

continuous color palette

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")

nr_feat_polys <- function(...) {
    spatInSituPlotPoints(g,
        polygon_fill = "nr_feats",
        polygon_fill_as_factor = FALSE,
        polygon_feat_type = "aggregate",
        polygon_line_size = 0.1,
        polygon_alpha = 1,
        ...
    )
}

# default
nr_feat_polys()

# set global option level: viridis
options("giotto.color_c_pal" = "v")
nr_feat_polys()

# set instructions level: magma
GiottoClass::instructions(g, "poly_color_c_pal") <- "magma"
nr_feat_polys()

GiottoClass::instructions(g, "poly_color_c_rev") <- TRUE
nr_feat_polys()
nr_feat_polys(polygon_fill_gradient_style = "s")


# set function level: mako
GiottoClass::instructions(g, "poly_color_c_rev") <- FALSE
nr_feat_polys(polygon_fill_gradient = "mako")

# set function level: color vector (2 to n colors)
nr_feat_polys(
    polygon_fill_gradient = c("green", "purple"),
    polygon_fill_gradient_style = "s"
)

nr_feat_polys(
    polygon_fill_gradient = c("blue", "yellow", "red"),
    polygon_fill_gradient_style = "s"
)

nr_feat_polys(
    polygon_fill_gradient = c(
        "darkgrey", "darkblue", "purple", "violet", "cyan"
    ),
    polygon_fill_gradient_style = "s"
)
```

