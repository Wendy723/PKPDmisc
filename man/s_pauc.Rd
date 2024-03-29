% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s_pauc.R
\name{s_pauc_}
\alias{s_pauc}
\alias{s_pauc_}
\title{summarize paucs}
\usage{
s_pauc_(df, idv, dv, paucs, digits = Inf)

s_pauc(df, idv, dv, paucs, digits = Inf)
}
\arguments{
\item{df}{data frame}

\item{idv}{string name for time column for pauc slice}

\item{dv}{string name for dependent variable column (eg. dv or cobs)}

\item{paucs}{list of ranges for pauc calculation}

\item{digits}{number of decimals to round result before returning}
}
\description{
summarize paucs
}
\examples{
\dontrun{
library(PKPDdatasets)
sd_oral_richpk  \%>\% group_by(ID) \%>\% s_pauc(Time, Conc, list(c(0,8), c(8, 24)))
sd_oral_richpk  \%>\% group_by(ID) \%>\% s_pauc_("Time", "Conc", list(c(0,8), c(8, 24)))
}
}

