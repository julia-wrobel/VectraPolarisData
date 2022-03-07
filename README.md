
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

Here you can load the daa.

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
