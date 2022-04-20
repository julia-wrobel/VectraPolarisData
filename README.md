
<!-- README.md is generated from README.Rmd. Please edit that file -->

# VectraPolarisData

<!-- badges: start -->
<!-- badges: end -->

The `VectraPolarisData` package provides two large multiplex
immunofluorescence datasets, collected using [Vectra 3 and Vectra
Polaris](https://www.akoyabio.com/phenoptics/mantra-vectra-instruments/)
instruments. Data included a study of lung cancer and a study of ovarian
cancer, and are provided as objects of class `SpatialExperiment`.

## Installation instructions

Until the next update of Bioconductor in April, the package is currently
only available through GitHub and requires the developer version of
Bioconductor to be installed:

``` r
# This will also require you to install the devel version of R from CRAN
if (!requireNamespace("BiocManager", quietly=TRUE))
    install.packages("BiocManager")
BiocManager::install(version = "devel")


BiocManager::install("julia-wrobel/VectraPolarisData")


# Installation instructions once new version of Bioc is available
# if (!requireNamespace("BiocManager", quietly = TRUE)) {
#     install.packages("BiocManager")
# }

#BiocManager::install("VectraPolarisData")
```

## Example

Here you can load data from the package. Data from the [lung cancer
study](https://www.jto.org/article/S1556-0864(21)02175-4/fulltext) are
loaded below.

``` r
library(VectraPolarisData)
spe_lung <- HumanLungCancerV3()
spe_lung
```

Data from the [ovarian cancer
study](https://aacrjournals.org/mcr/article/19/12/1973/675069/The-Spatial-Context-of-Tumor-Infiltrating-Immune)
are loaded below.

``` r
spe_ovarian <- HumanOvarianCancerVP()
spe_ovarian
```

These datasets are provided as `SpatialExperiment` class objects. More
detailed information about these datasets is available in the package
vignette.
