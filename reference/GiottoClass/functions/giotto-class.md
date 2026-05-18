# `giotto-class` {#giotto-class}

*Package:* `GiottoClass`  
*Title:* S4 giotto Class
*Aliases:* `giotto`

## Description

Giotto's core object that encapsulates all the components
of a spatial-omic project and facilitates analyses.

## Value

giotto object

## Details

[**initialize**]
The `giotto` class has a robust `initialize()` method that is automatically
called upon setting data into the object, updates of
the `giottoInstructions`, and loading of saved objects.
It performs the following steps:
1. Update the object and subobjects for class definition changes if needed
1. Ensure a set of `giottoInstructions` are available, otherwise generate
defaults
1. Ensure a giotto python environment is accessible when the options
giotto.has_conda and giotto.use_conda are TRUE
1. Check the active spat_unit and feat_type
1. Ensure spatial/cell ID consistency and initialize the cell_ID and feat_ID
slots for the active spat_unit and feat_type, as well as cell and feature
metadata if they do not exist. Values for IDs and metadata are pulled
from any existing data in spatial_info/feat_info or expression slots,
with a preference for the latter.
1. Perform slot-specific and hierarchical checks that ensure dependent pieces
of information are only added AFTER the data that they depend on and that
existing information is consistent across slots.
1. Object validity checking

## Examples

```r
giotto()
```

