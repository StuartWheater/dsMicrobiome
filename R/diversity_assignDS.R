#'
#' @title Generates the results of diversity function and store it on the server
#' @description This function is implemented by wapper around the \code{vegan} function \code{diversityDS}.
#' @details The function returns ...
#' @param data.name.transmit a string character, the name of a dataframe
#' @param index an parameter of unspecified purpose
#' @param MARGIN an parameter of unspecified purpose
#' @param base an parameter of unspecified purpose
#' @return the results of \code{diversityDS} function
#' @author Stuart Wheater for DataSHIELD Development Team
#' @export
#'

diversity_assignDS <- function(data.name.transmit, index = "shannon", MARGIN = 1, base = exp(1))
{
    data <- eval(parse(text=data.name.transmit), envir = parent.frame())

    diversityResults <- vegan::diversity(data, index, MARGIN, base)

    return(diversityResults)
}
#ASSIGN FUNCTION
# diversity_assignDS
