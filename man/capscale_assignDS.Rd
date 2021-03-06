% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/capscale_assignDS.R
\name{capscale_assignDS}
\alias{capscale_assignDS}
\title{Generates the results of capscale function and store it on the server}
\usage{
capscale_assignDS(
  formula,
  data.name.transmit,
  distance = "euclidean",
  sqrt.dist = FALSE,
  comm = NULL,
  add = FALSE,
  metaMDSdist = FALSE,
  subset = NULL
)
}
\arguments{
\item{formula}{an parameter of unspecified purpose}

\item{data.name.transmit}{a string character, the name of a dataframe}

\item{distance}{an parameter of unspecified purpose}

\item{sqrt.dist}{an parameter of unspecified purpose}

\item{comm}{an parameter of unspecified purpose}

\item{add}{an parameter of unspecified purpose}

\item{metaMDSdist}{an parameter of unspecified purpose}

\item{subset}{an parameter of unspecified purpose}
}
\value{
the results of \code{capscaleDS} function
}
\description{
This function is implemented by wapper around the \code{vegan} function \code{capscaleDS}.
}
\details{
The function returns ...
}
\author{
Stuart Wheater for DataSHIELD Development Team
}
