% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalize_vwmb.R
\name{norm_scales_fcmode}
\alias{norm_scales_fcmode}
\title{minimize the foldchange-mode between all columns}
\usage{
norm_scales_fcmode(x, min_overlap = 10)
}
\arguments{
\item{x}{log-transformed numeric matrix}

\item{min_overlap}{minimum number of rows that have a finite foldchange for any given combination of columns (otherwise, mode foldchange is not computed)}
}
\value{
scaling factor for each column in x
}
\description{
minimize the foldchange-mode between all columns
}
