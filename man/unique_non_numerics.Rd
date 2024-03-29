% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/non_numerics.R
\name{unique_non_numerics}
\alias{unique_non_numerics}
\title{find all unique non-numeric values}
\usage{
unique_non_numerics(x, na.rm = TRUE)
}
\arguments{
\item{x}{vector to check on}

\item{na.rm}{remove existing na values before checking}
}
\description{
find all unique non-numeric values
}
\details{
This function is especially useful for figuring out what
non-numeric unique values are in in a column that should be numeric
so one can easily replace them with another flag. This function can work well
with \code{replace_char_flags} instead of using nested ifelse statements
}
\examples{
\dontrun{
dv <- c(1, 2, 4, "88 (excluded)", "bql", "*")
unique_non_numerics(dv)
df <- data.frame(ID = 1:3, DV = c("BQL", 0.5, 9), stringsAsFactors=F)
unique_non_numerics(df$DV)

#using dplyr
library(dplyr)
df \%>\% filter(!(DV \%in\% unique_non_numerics(DV)))
}
}
\seealso{
\code{\link{replace_values}}: to use to replace non-numeric values
in a dataframe.
}

