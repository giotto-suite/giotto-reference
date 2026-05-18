# `plot_output_handler` {#plot_output_handler}

*Package:* `GiottoVisuals`  
*Title:* Plotting output handler

## Description

Simple wrapper for handling Giotto's framework for plotting outputs and
saving Plotting functions should return using this handler.

## Usage

```r
plot_output_handler(
  gobject,
  plot_object,
  save_plot = NULL,
  return_plot = NULL,
  show_plot = NULL,
  default_save_name = NULL,
  save_param = list(),
  else_return = NULL
)
```

## Arguments

- `gobject`: giotto object
- `plot_object`: plot object
- `save_plot`: logical. (defaults to instructions setting) whether to save
plot
- `return_plot`: logical. (defaults to instructions setting) whether to
return the plot object
- `show_plot`: logical. (defaults to instructions setting) whether to print
the plot in display device
- `default_save_name`: default name to use (should be set by the specific
plotting function. Users should not interact with this parameter)
- `save_param`: list of plot saving parameters see `[showSaveParameters()](=showSaveParameters)`
- `else_return`: optional. What should be returned instead if the plot
object is not returned

## Value

plot object

## Examples

```r
g <- GiottoData::loadGiottoMini("vizgen")
g_spatplot <- spatPlot2D(g, return_plot = TRUE)

plot_output_handler(g, plot_object = g_spatplot, save_plot = FALSE)
```

