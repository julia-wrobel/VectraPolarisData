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
#' Data include (DESCRIBE)
#' Datasets may be used for testing of and as examples in packages,
#' for tutorials and workflow demonstrations, or similar purposes.
#'
#' @details
#' The following Vectra multiplex imaging
#' datasets are currently available
#' (see the package vignette for links to details):
#' \itemize{
#' \item{LungCancerV3}
#' \item{OvarianCancerVP}
#' }
#'
#' @return
#' a \code{\linkS4class{SpatialExperiment}}
#' with rows corresponding to samples (cells)
#' and columns to features (markers).
#' EXPLAIN OTHER FEATURES HERE
#'
#' @examples
#' # EDIT THIS EXAMPLE
#' # initialize hub instance
#' eh <- VectraPolaris()
#'
#' # query for TENxVisium datasets
#' (q <- query(eh, "VectraPolaris"))
#'
#' # retrieve dataset of interest
#' pat <- "HumanCerebellum$"
#' idx <- grep(pat, q$title)
#' id <- q$ah_id[idx]
#' (spe <- eh[[id]])
#'
#'
#' @author Julia Wrobel
NULL
