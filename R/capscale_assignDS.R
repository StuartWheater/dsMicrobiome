#'
#' @title Generates the results of capscale function and store it on the server
#' @description This function is implemented by wapper around the \code{vegan} function \code{capscaleDS}.
#' @details The function returns ...
#' @param formula an parameter of unspecified purpose
#' @param data.name.transmit a string character, the name of a dataframe
#' @param distance an parameter of unspecified purpose
#' @param sqrt.dist an parameter of unspecified purpose
#' @param comm an parameter of unspecified purpose
#' @param add an parameter of unspecified purpose
# @param dfun an parameter of unspecified purpose
#' @param metaMDSdist an parameter of unspecified purpose
# @param na.action an parameter of unspecified purpose
#' @param subset an parameter of unspecified purpose
#' @return the results of \code{capscaleDS} function
#' @author Stuart Wheater for DataSHIELD Development Team
#' @export
#'

# capscale_assignDS <- function(formula, data.name.transmit, distance = "euclidean", sqrt.dist = FALSE, comm = NULL, add = FALSE, dfun = vegan::vegdist, metaMDSdist = FALSE, na.action = stats::na.fail, subset = NULL)
capscale_assignDS <- function(formula, data.name.transmit, distance = "euclidean", sqrt.dist = FALSE, comm = NULL, add = FALSE, metaMDSdist = FALSE, subset = NULL)
{
    data <- eval(parse(text=data.name.transmit), envir = parent.frame())

    capscaleResults <- vegan::capscale(formula, data, distance, sqrt.dist, comm, add, metaMDSdist = metaMDSdist, subset = subset)

    return(capscaleResults)
}
#AGGREGATE FUNCTION
# capscale_assignDS
