# `giotto_python` {#giotto_python}

*Package:* `GiottoClass`  
*Title:* Giotto python environment
*Aliases:* `checkGiottoEnvironment`, `installGiottoEnvironment`, `removeGiottoEnvironment`, `set_giotto_python_path`

## Description

Giotto has several functions that utilize python packages. To
facilitate this, utilities are provided for creating, removing, and
attaching python environments. Python environments are currently handled
entirely through **reticulate**.

**Creating an environment**

`installGiottoEnvironment()` can be used to create a default miniconda
environment called `giotto_env` that includes some commonly used python
packages. See the **python versions** section for specific packages and
version numbers.

Custom environments manageable through **reticulate** are also compatible
and can be hooked into by Giotto after creation.

`checkGiottoEnvironment()` can be used in order to test if an envname or
full python path is accessible by Giotto. It will also check the
`"giotto.py_path"` option.

**Choosing environments**

Only one python environment may be initialized and used by **reticulate**
during a single R session. In order to switch to another environment, the
R session must be restarted.

Whenever any of the following happens for the first time in a session:
- `giotto` object creation (due to creation of a default
`giottoInstructions`)
- `giottoInstructions` creation (`createGiottoInstructions()`)
- `GiottoClass::set_giotto_python_path()` is called (most direct)


For the above, Giotto automatically detects AND activates a python
environment based on the following defaults in decreasing priority:
1. User provided (when `python_path` param is not `NULL`)
1. Any provided path or envname in option `"giotto.py_path"`
1. Default expected giotto environment location based on
`[reticulate::miniconda_path()](reticulate:miniconda_path)`
1. Envname `"giotto_env"`
1. System default python environment


This behavior is mediated by the `set_giotto_python_path()` utility
function, which will find an environment and then initialize it.

## Usage

```r
checkGiottoEnvironment(
  envname = NULL,
  mini_install_path = deprecated(),
  verbose = NULL
)

installGiottoEnvironment(
  packages_to_install = c("pandas==1.5.1", "networkx==2.8.8", "python-igraph==0.10.2",
    "leidenalg==0.9.0", "python-louvain==0.16", "python.app==1.4", "scikit-learn==1.1.3",
    "smfishhmrf", "session-info"),
  pip_packages = c("python-louvain", "smfishhmrf", "session-info"),
  python_version = "3.10.2",
  mini_install_path = NULL,
  confirm = TRUE,
  envname = "giotto_env",
  conda = "auto",
  force_miniconda = FALSE,
  force_environment = FALSE,
  verbose = NULL
)

removeGiottoEnvironment(
  envname = "giotto_env",
  mini_path = deprecated(),
  conda = "auto",
  verbose = TRUE
)

set_giotto_python_path(python_path = NULL, verbose = NULL, initialize = TRUE)
```

## Arguments

- `envname`: character. (optional) The name of a miniconda or conda
environment OR path to a python executable. When using
`installGiottoEnvironment()`, the default is `"giotto_env"`
- `mini_install_path`: (optional) desired miniconda installation location.
Default is chosen by `reticulate::install_miniconda()`
- `verbose`: be verbose
- `packages_to_install`: python modules (packages) to install for Giotto.
- `pip_packages`: python packages mush installed with pip, only names
are needed
- `python_version`: python version to use within the giotto conda
environment. Default is v3.10.2
- `confirm`: whether to pause for confirmation of conda environment
install location (default = TRUE)
- `conda`: either "auto" (default) to allow reticulate to handle it, or
the full filepath to the conda executable. You can also set the option
`"reticulate.conda_binary"` or `Sys.setenv()` `"RETICULATE_CONDA"` to tell
reticulate where to look.
- `force_miniconda`: force reinstallation of miniconda
- `force_environment`: force reinstallation of the giotto environment
- `mini_path`: deprecated
- `python_path`: character. Name of environment or full path to python
executable.
- `initialize`: force initialization of set python path. Default = TRUE.

## Value

installed Giotto environment

## Examples

```r
# detect without initialization
# check default env location
checkGiottoEnvironment()

# use environment name
checkGiottoEnvironment("giotto_env")

# full path
# (use this if a different install location specified with .condarc)
if (FALSE) {
    checkGiottoEnvironment(
        "/Users/example/Library/r-miniconda-arm64/envs/giotto_env/bin/pythonw"
    )
}
if (FALSE) {
    # default environment installation
    installGiottoEnvironment()

    # install to alternate location
    temp_env <- tempdir()
    installGiottoEnvironment(mini_install_path = temp_env)
}
# detect AND initialize a python environment
if (FALSE) {
    set_giotto_python_path()
}
```

