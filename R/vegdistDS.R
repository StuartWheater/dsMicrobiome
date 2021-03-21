#'
#' @title Generates the results of vegdist function and store it on the server
#' @description This function is implemented by wapper around the \code{vegan} function \code{vegdistDS}.
#' @details The function returns ...
#' @param matrix.name.transmit a string character, the name of a dataframe
#' @param method an parameter of unspecified purpose
#' @param binary an parameter of unspecified purpose
#' @param diag an parameter of unspecified purpose
#' @param upper an parameter of unspecified purpose
#' @param na.rm an parameter of unspecified purpose
#' @return the results of \code{vegdistDS} function
#' @author Stuart Wheater for DataSHIELD Development Team
#' @export
#'

vegdistDS <- function(matrix.name.transmit, method="bray", binary=FALSE, diag=FALSE, upper=FALSE, na.rm = FALSE)
{
    matrix <- eval(parse(text=matrix.name.transmit), envir = parent.frame())

    vegdistResults <- vegan::vegdist(matrix, method, binary, diag, upper, na.rm)

    return(vegdistResults)
}
#AGGREGATE FUNCTION
# vegdistDS
