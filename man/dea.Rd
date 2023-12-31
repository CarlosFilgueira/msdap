% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dea.R
\name{dea}
\alias{dea}
\title{Differential expression analysis}
\usage{
dea(
  dataset,
  qval_signif = 0.01,
  fc_signif = 0,
  dea_algorithm = "deqms",
  rollup_algorithm = "maxlfq",
  output_dir_for_eset = ""
)
}
\arguments{
\item{dataset}{your dataset}

\item{qval_signif}{threshold for significance of q-values}

\item{fc_signif}{threshold for significance of log2 foldchanges. Set to zero or NA to disregard, or a positive value to apply a cutoff to absolute log2 foldchanges. MS-DAP can also perform a bootstrap analyses to infer a reasonable threshold by setting this parameter to NA}

\item{dea_algorithm}{algorithm for differential expression analysis (provide an array of strings to run multiple, in parallel). Refer to \code{\link{dea_algorithms}} function documentation for available options and a brief description of each. To use a custom DEA function, provide the respective R function name as a string (see GitHub documentation on custom DEA functions for more details)}

\item{rollup_algorithm}{algorithm for combining peptides to proteins as used in DEA algorithms that require a priori rollup from peptides to a protein-level abundance matrix before applying statistics (e.g. ebayes, deqms). Refer to \code{\link{rollup_pep2prot}} function documentation for available options and a brief description of each}

\item{output_dir_for_eset}{optionally, provide an output directory where the expressionset objects should be stored. Only useful if you're doing downstream data analysis that requires this data}
}
\value{
long-format tibble with results for each DEA algorithm requested via \code{dea_algorithm} parameter. Note that a MS-DAP contrast for "A vs B" returns foldchanges for B/A. For example, for the contrast "control vs disease" a positive log2 foldchange implies protein abundances are higher in the "disease" sample group. The column \code{signif} contains a boolean flag indicating significant hits according to both the user defined q-value threshold (parameter \code{qval_signif}, also in result table column \code{signif_threshold_qvalue}) and optional foldchange threshold (parameter \code{fc_signif}, also in result table column \code{signif_threshold_log2fc})
}
\description{
Differential expression analysis
}
\seealso{
\code{dea_algorithms()} for available DEA algorithms and documentation.
}
