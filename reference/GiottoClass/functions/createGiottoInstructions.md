# `createGiottoInstructions` {#createGiottoInstructions}

*Package:* `GiottoClass`  
*Title:* Giotto instructions
*Aliases:* `giotto_instructions`, `instructions`, `instructions<-`, `instructions,missing,missing-method`, `instructions,giotto,missing-method`, `instructions,giotto,character-method`, `instructions,giottoInstructions,character-method`, `instructions<-,giotto,missing,missing-method`, `instructions<-,giotto,missing,logical-method`, `instructions<-,giotto,character,missing-method`, `instructions<-,giotto,character,logical-method`, `instructions<-,giottoInstructions,character,ANY-method`

## Description

Giotto instructions are default settings that are applied at the `giotto`
object level. Once added to an object, they affect the way that the object
behaves. You can create a `giottoInstructions` object using
`createGiottoInstructions()` and add them to the `giotto` object during
creation or using the `instructions()` generic. Specific settings can be
replaced or retrieved using the `param` argument. Additionally, when using
instructions<-() as a replacement function, `initialize()` will be called
on the `giotto` object if `initialize = TRUE`.

If no `giottoInstructions` object is provided during `giotto` object
creation, then a default one will be created during `giotto` object
initialization.

## Usage

```r
createGiottoInstructions(
  python_path = getOption("giotto.py_path"),
  show_plot = NULL,
  return_plot = NULL,
  save_plot = NULL,
  save_dir = NULL,
  plot_format = NULL,
  dpi = NULL,
  units = NULL,
  height = NULL,
  width = NULL,
  is_docker = FALSE,
  plot_count = 0,
  fiji_path = NULL,
  no_python_warn = FALSE
)

instructions,missing,missing-method(gobject, param, ...)

instructions,giotto,missing-method(gobject)

instructions,giotto,character-method(gobject, param)

instructions,giottoInstructions,character-method(gobject, param)

instructions,giotto,missing,missing-method(gobject, initialize) <- value

instructions,giotto,missing,logical-method(gobject, initialize) <- value

instructions,giotto,character,missing-method(gobject, param, initialize) <- value

instructions,giotto,character,logical-method(gobject, param, initialize) <- value

instructions,giottoInstructions,character,ANY-method(gobject, param) <- value
```

## Arguments

- `python_path`: path to python binary to use or directory one level
up from the `env` directory (similar to output of
`reticulate::miniconda_path()`)
- `show_plot`: print plot to console, default = TRUE
- `return_plot`: return plot as object, default = TRUE
- `save_plot`: automatically save plot, dafault = FALSE
- `save_dir`: path to directory where to save plots
- `plot_format`: format of plots (defaults to png)
- `dpi`: resolution for raster images
- `units`: units of format (defaults to in)
- `height`: height of plots
- `width`: width of  plots
- `is_docker`: using docker implementation of Giotto (defaults to FALSE)
- `plot_count`: (global option) start count for creating automatic unique
plots
- `fiji_path`: path to fiji executable
- `no_python_warn`: turn off warning that no compatible python env has
been detected
- `gobject`: giotto object
- `param`: Specific param in instructions to access or modify
- `...`: params to pass to `createGiottoInstructions()`
- `initialize`: (boolean, default = TRUE) whether to initialize the giotto
object
- `value`: value to set

## Value

`giottoInstructions`, instructions settings, or `giotto` objects
with modified instructions

## Examples

```r
g <- GiottoData::loadGiottoMini("visium")

# create instructions
ins <- instructions()

# get instructions
instrs <- instructions(g)
force(instrs)

# get single instructions param
instructions(g, "show_plot")

# replace an instruction param
instructions(g, "show_plot") <- FALSE
instructions(g, "show_plot")

# replace multiple instruction params
instructions(g)
instructions(g, c("show_plot", "dpi")) <- list(TRUE, 600)
instructions(g)

# replace instructions
i <- createGiottoInstructions()
instructions(g) <- i
instructions(g)
```

