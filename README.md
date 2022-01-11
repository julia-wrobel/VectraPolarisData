
<!-- README.md is generated from README.Rmd. Please edit that file -->

# VectraPolarisData

<!-- badges: start -->
<!-- badges: end -->

The `VectraPolarisData` package provides a collection of [Vectra 3 and
Vectra
Polaris](https://www.akoyabio.com/phenoptics/mantra-vectra-instruments/)
multiplex imaging datasets. Data cover various pathologies and tissues,
and are provided as objects of class `SpatialExperiment`.

## Installation instructions

The package is currently only available through GitHub, and should be
installed using:

``` r
if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
}


BiocManager::install("julia-wrobel/VectraPolarisData")
#BiocManager::install("VectraPolarisData")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library("VectraPolarisData")
## basic example code
```

## Citation

Below is the citation output from using `citation('VectraPolarisData')`
in R. Please run this yourself to check for any updates on how to cite
**VectraPolarisData**.

``` r
print(citation('VectraPolarisData'), bibtex = TRUE)
```

Please note that the `VectraPolarisData` was only made possible thanks
to many other R and bioinformatics software authors, which are cited
either in the vignettes and/or the paper(s) describing this package.

## Code of Conduct

Please note that the `VectraPolarisData` project is released with a
[Contributor Code of
Conduct](http://bioconductor.org/about/code-of-conduct/). By
contributing to this project, you agree to abide by its terms.

## Development tools

-   Continuous code testing is possible thanks to [GitHub
    actions](https://www.tidyverse.org/blog/2020/04/usethis-1-6-0/)
    through *[usethis](https://CRAN.R-project.org/package=usethis)*,
    *[remotes](https://CRAN.R-project.org/package=remotes)*, and
    *[rcmdcheck](https://CRAN.R-project.org/package=rcmdcheck)*
    customized to use [Bioconductor’s docker
    containers](https://www.bioconductor.org/help/docker/) and
    *[BiocCheck](https://bioconductor.org/packages/3.14/BiocCheck)*.
-   Code coverage assessment is possible thanks to
    [codecov](https://codecov.io/gh) and
    *[covr](https://CRAN.R-project.org/package=covr)*.
-   The code is styled automatically thanks to
    *[styler](https://CRAN.R-project.org/package=styler)*.
-   The documentation is formatted thanks to
    *[devtools](https://CRAN.R-project.org/package=devtools)* and
    *[roxygen2](https://CRAN.R-project.org/package=roxygen2)*.

For more details, check the `dev` directory.

This package was developed using
*[biocthis](https://bioconductor.org/packages/3.14/biocthis)*.
