
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

Now available in Bioconductor version 3.15! To install, use:

``` r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
}

BiocManager::install("VectraPolarisData")
```

## Example

Here you can load data from the package. Data from the [lung cancer
study](https://www.jto.org/article/S1556-0864(21)02175-4/fulltext) are
loaded below.

``` r
library(VectraPolarisData)
#> Loading required package: ExperimentHub
#> Loading required package: BiocGenerics
#> 
#> Attaching package: 'BiocGenerics'
#> The following objects are masked from 'package:stats':
#> 
#>     IQR, mad, sd, var, xtabs
#> The following objects are masked from 'package:base':
#> 
#>     anyDuplicated, append, as.data.frame, basename, cbind, colnames,
#>     dirname, do.call, duplicated, eval, evalq, Filter, Find, get, grep,
#>     grepl, intersect, is.unsorted, lapply, Map, mapply, match, mget,
#>     order, paste, pmax, pmax.int, pmin, pmin.int, Position, rank,
#>     rbind, Reduce, rownames, sapply, setdiff, sort, table, tapply,
#>     union, unique, unsplit, which.max, which.min
#> Loading required package: AnnotationHub
#> Loading required package: BiocFileCache
#> Loading required package: dbplyr
#> Loading required package: SpatialExperiment
#> Loading required package: SingleCellExperiment
#> Loading required package: SummarizedExperiment
#> Loading required package: MatrixGenerics
#> Loading required package: matrixStats
#> 
#> Attaching package: 'MatrixGenerics'
#> The following objects are masked from 'package:matrixStats':
#> 
#>     colAlls, colAnyNAs, colAnys, colAvgsPerRowSet, colCollapse,
#>     colCounts, colCummaxs, colCummins, colCumprods, colCumsums,
#>     colDiffs, colIQRDiffs, colIQRs, colLogSumExps, colMadDiffs,
#>     colMads, colMaxs, colMeans2, colMedians, colMins, colOrderStats,
#>     colProds, colQuantiles, colRanges, colRanks, colSdDiffs, colSds,
#>     colSums2, colTabulates, colVarDiffs, colVars, colWeightedMads,
#>     colWeightedMeans, colWeightedMedians, colWeightedSds,
#>     colWeightedVars, rowAlls, rowAnyNAs, rowAnys, rowAvgsPerColSet,
#>     rowCollapse, rowCounts, rowCummaxs, rowCummins, rowCumprods,
#>     rowCumsums, rowDiffs, rowIQRDiffs, rowIQRs, rowLogSumExps,
#>     rowMadDiffs, rowMads, rowMaxs, rowMeans2, rowMedians, rowMins,
#>     rowOrderStats, rowProds, rowQuantiles, rowRanges, rowRanks,
#>     rowSdDiffs, rowSds, rowSums2, rowTabulates, rowVarDiffs, rowVars,
#>     rowWeightedMads, rowWeightedMeans, rowWeightedMedians,
#>     rowWeightedSds, rowWeightedVars
#> Loading required package: GenomicRanges
#> Loading required package: stats4
#> Loading required package: S4Vectors
#> 
#> Attaching package: 'S4Vectors'
#> The following objects are masked from 'package:base':
#> 
#>     expand.grid, I, unname
#> Loading required package: IRanges
#> Loading required package: GenomeInfoDb
#> Loading required package: Biobase
#> Welcome to Bioconductor
#> 
#>     Vignettes contain introductory material; view with
#>     'browseVignettes()'. To cite Bioconductor, see
#>     'citation("Biobase")', and for packages 'citation("pkgname")'.
#> 
#> Attaching package: 'Biobase'
#> The following object is masked from 'package:MatrixGenerics':
#> 
#>     rowMedians
#> The following objects are masked from 'package:matrixStats':
#> 
#>     anyMissing, rowMedians
#> The following object is masked from 'package:ExperimentHub':
#> 
#>     cache
#> The following object is masked from 'package:AnnotationHub':
#> 
#>     cache
spe_lung <- HumanLungCancerV3()
#> see ?VectraPolarisData and browseVignettes('VectraPolarisData') for documentation
#> loading from cache
spe_lung
#> class: SpatialExperiment 
#> dim: 8 1604786 
#> metadata(1): clinical_data
#> assays(3): intensities nucleus_intensities membrane_intensities
#> rownames(8): cd19_opal_650 cd3_opal_520 ... dapi autofluorescence
#> rowData names(0):
#> colnames: NULL
#> colData names(124): cell_id tissue_category ... phenotype_cd4 sample_id
#> reducedDimNames(0):
#> mainExpName: NULL
#> altExpNames(0):
#> spatialCoords names(2) : cell_x_position cell_y_position
#> imgData names(0):
```

Data from the [ovarian cancer
study](https://aacrjournals.org/mcr/article/19/12/1973/675069/The-Spatial-Context-of-Tumor-Infiltrating-Immune)
are loaded below.

``` r
spe_ovarian <- HumanOvarianCancerVP()
#> see ?VectraPolarisData and browseVignettes('VectraPolarisData') for documentation
#> loading from cache
spe_ovarian
#> class: SpatialExperiment 
#> dim: 10 1610431 
#> metadata(1): clinical_data
#> assays(3): intensities nucleus_intensities membrane_intensities
#> rownames(10): ck_opal_780 ki67_opal_690 ... dapi autofluorescence
#> rowData names(0):
#> colnames: NULL
#> colData names(195): cell_id tissue_category ... phenotype_cd8 sample_id
#> reducedDimNames(0):
#> mainExpName: NULL
#> altExpNames(0):
#> spatialCoords names(2) : cell_x_position cell_y_position
#> imgData names(0):
```

These datasets are provided as `SpatialExperiment` class objects. More
detailed information about these datasets is available in the package
vignette.
