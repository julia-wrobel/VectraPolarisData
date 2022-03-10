
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

## Citation

The objects provided in this package are rich data sources we encourage
others to use in their own analyses. If you do include them in your
peer-reviewed work, we ask that you cite our package and the original
studies.

To cite the `HumanLungCancerV3()` data in `bibtex` format, use:

    @article{johnson2021cancer,
      title={Cancer cell-specific MHCII expression as a determinant of the immune infiltrate organization and function in the non-small cell lung cancer tumor microenvironment.},
      author={Johnson, AM and Boland, JM and Wrobel, J and Klezcko, EK and Weiser-Evans, M and Hopp, K and Heasley, L and Clambey, ET and Jordan, K and Nemenoff, RA and others},
      journal={Journal of Thoracic Oncology: Official Publication of the International Association for the Study of Lung Cancer},
      year={2021}
    }

To cite the `HumanOvarianCancerVP()` data, use:

    @article{steinhart2021spatial,
      title={The spatial context of tumor-infiltrating immune cells associates with improved ovarian cancer survival},
      author={Steinhart, Benjamin and Jordan, Kimberly R and Bapat, Jaidev and Post, Miriam D and Brubaker, Lindsay W and Bitler, Benjamin G and Wrobel, Julia},
      journal={Molecular Cancer Research},
      volume={19},
      number={12},
      pages={1973--1979},
      year={2021},
      publisher={AACR}
    }
