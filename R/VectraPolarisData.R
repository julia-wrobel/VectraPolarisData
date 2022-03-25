#' @name VectraPolarisData
#' @title VectraPolarisData
#'
#' @aliases
#' LungCancerV3
#' OvarianCancerVP
#'
#' @description
#' Vectra 3 and Vectra Polaris multiplex imaging datasets,
#' formatted into objects of class SpatialExperiment.
#' Datasets may be used for testing of and as examples in packages,
#' for tutorials and workflow demonstrations, or similar purposes.
#'
#' @details
#' The following Vectra multiplex imaging
#' datasets are currently available
#' (see the package vignette for links to details and ddata dictionaries):
#' \itemize{
#' \item{LungCancerV3}
#' \item{OvarianCancerVP}
#' }
#'
#' @return
#' a \code{\linkS4class{SpatialExperiment}}
#' with rows corresponding to samples (cells)
#' and columns to features (markers).
#'
#' @examples
#' # retrieve dataset of interest
#'
#' library(VectraPolarisData)
#' spe_lung <- HumanLungCancerV3()
#' spe_ovarian <- HumanOvarianCancerVP()
#'
#'
#' @author Julia Wrobel
NULL
