% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util_generic.R
\name{as_matrix_except_first_column}
\alias{as_matrix_except_first_column}
\title{convert a wide-format data.frame to a matrix}
\usage{
as_matrix_except_first_column(x)
}
\arguments{
\item{x}{a wide-format data.frame or tibble where the first column are assumed to represent unique row identifiers and other columns assumed 'data' columns for the output matrix}
}
\description{
after pivoting a long-format tibble to wide-format, use this function to easily convert to a matrix (e.g. for efficient numerical computation using the matrixStats package)
}
\examples{
\dontrun{
  m = as_matrix_except_first_column(dataset$peptides \%>\%
    pivot_wider(id_cols = "peptide_id", names_from = "sample_id", values_from = "intensity")
  )
}

}
