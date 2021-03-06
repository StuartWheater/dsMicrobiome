% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diversity_assignDS.R
\name{diversity_assignDS}
\alias{diversity_assignDS}
\title{Generates the results of diversity function and store it on the server}
\usage{
diversity_assignDS(
  data.name.transmit,
  index = "shannon",
  MARGIN = 1,
  base = exp(1)
)
}
\arguments{
\item{data.name.transmit}{a string character, the name of a dataframe}

\item{index}{an parameter of unspecified purpose}

\item{MARGIN}{an parameter of unspecified purpose}

\item{base}{an parameter of unspecified purpose}
}
\value{
the results of \code{diversityDS} function
}
\description{
This function is implemented by wapper around the \code{vegan} function \code{diversityDS}.
}
\details{
The function returns ...
}
\author{
Stuart Wheater for DataSHIELD Development Team
}
