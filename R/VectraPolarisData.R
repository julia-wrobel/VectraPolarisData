#' @name VectraPolarisData
#' @title VectraPolarisData
#'
#' @aliases HumanLungCancerV3 HumanOvarianCancerVP
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
#' (see the package vignette for links to details and data dictionaries):
#' \itemize{
#' \item{HumanLungCancerV3}
#' \item{HumanOvarianCancerVP}
#' }
#'
#' @return
#' a \code{\linkS4class{SpatialExperiment}} class object
#' with rows corresponding to samples (cells)
#' and columns to features (markers).
#'
#' @examples
#' # retrieve dataset of interest
#'
#' library(ExperimentHub)
#' eh <- ExperimentHub()        # initialize hub instance
#' q <- query(eh, "VectraPolarisData") # retrieve 'VectraPolarisData' records
#' id <- q$ah_id[1]             # specify dataset ID to load
#' spe <- eh[[id]]              # load specified dataset
#'
#'
#' @author Julia Wrobel
NULL


