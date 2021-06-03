#'
#' @title Generates the results of adonis function and store it on the server
#' @description This function is implemented by wapper around the \code{vegan} function \code{adonisDS}.
#' @details The function returns ...
#' @param formula an parameter of unspecified purpose
#' @param data.name.transmit a string character, the name of a dataframe
#' @param permutations an parameter of unspecified purpose
#' @param method an parameter of unspecified purpose
#' @param strata an parameter of unspecified purpose
#' @param contr.unordered an parameter of unspecified purpose
#' @param contr.ordered an parameter of unspecified purpose
#' @return the results of \code{adonisDS} function
#' @author Stuart Wheater for DataSHIELD Development Team
#' @export
#'
adonis_assignDS <- function(formula, data.name.transmit, permutations = 999, method = "bray", strata = NULL, contr.unordered = "contr.sum", contr.ordered = "contr.poly")
{
    data <- eval(parse(text=data.name.transmit), envir = parent.frame())

    environment(formula) <- environment()

    adonisResults <- vegan::adonis(formula, data, permutations, method, strata, contr.unordered, contr.ordered)

    return(adonisResults)
}
#ASSIGN FUNCTION
# adonis_assignDS
