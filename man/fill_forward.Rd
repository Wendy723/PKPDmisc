% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{fill_forward}
\alias{fill_forward}
\title{given NA values fill them with the final non-na value}
\usage{
fill_forward(x)
}
\arguments{
\item{x}{A numeric vector of values}
}
\description{
given NA values fill them with the final non-na value
}
\details{
Works very well in context of dplyr to carry out last-observation-carried-foward
for different individuals. It will NOT replace leading NA's
}
\examples{
\dontrun{
fill_forward(c(1.0, NA, 2))
fill_forward(c(NA, 1, NA, 2))
library(dplyr)
df <- data_frame(id = c(1, 1, 2, 2), obs = c(1.2, 4.8, 2.5, NA))
df \%>\% group_by(id) \%>\% mutate(obs_locf = fill_forward(obs))
}
}

