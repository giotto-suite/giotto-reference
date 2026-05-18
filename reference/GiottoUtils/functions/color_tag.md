# `color_tag` {#color_tag}

*Package:* `GiottoUtils`  
*Title:* Colorize print text
*Aliases:* `color_red`, `color_green`, `color_yellow`, `color_blue`, `color_purple`, `color_teal`, `use_color_text`, `ansi_colors`, `is_emacs_with_color`, `emacs_version`

## Description

Return a list of 8 formatting tags for ansi colored text

## Usage

```r
color_tag()

color_red(x)

color_green(x)

color_yellow(x)

color_blue(x)

color_purple(x)

color_teal(x)

use_color_text()

ansi_colors()

is_emacs_with_color()

emacs_version()
```

## Arguments

- `x`: text to color

## Value

named list of characters

## Details

supported colors checking is modified from **cli**
[aab-num-ansi-colors.R](https://github.com/r-lib/cli/blob/HEAD/R/num-ansi-colors.R)

## Examples

```r
color_tag()

color_red("My text")

color_green("My text")

color_yellow("My text")

color_blue("My text")

color_purple("My text")

color_teal("My text")

use_color_text()

ansi_colors()

is_emacs_with_color()

emacs_version()
```

