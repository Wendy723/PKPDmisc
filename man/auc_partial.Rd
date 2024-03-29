% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AUC_partial.R
\name{auc_partial}
\alias{auc_partial}
\title{Calculate partial AUC}
\usage{
auc_partial(idv, dv, range = c(0, Inf))
}
\arguments{
\item{idv}{independent variable (such as time)}

\item{dv}{dependent variable (such as concentration)}

\item{range}{time range for pauc calculation}
}
\description{
Calculate partial AUC
}
\details{
default range is 0 to tmax
is recommended to be used alongside dplyr for ease of calculation
if an individual does not have any value within the specified range
a warning will be issued and an NA value will be returned. This is important
if some individuals dropped out early and do not have all observations other
individuals have.
}
\examples{
\dontrun{
library(PKPDdatasets)
library(dplyr)
df <- capitalize_names(sd_oral_richpk)
df2 <- rename(sd_oral_richpk, idv = Time, dv = Conc)
df \%>\% group_by(ID) \%>\% summarize(pAUC0_10 = auc_partial(TIME, DV, c(0,10)))
df2 \%>\% group_by(ID) \%>\% summarize(auc0_tlast = auc_partial(idv, dv, c(0, Inf))) # gives auc 0 to tlast
}
}

