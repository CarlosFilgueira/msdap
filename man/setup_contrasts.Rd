% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample_metadata.R
\name{setup_contrasts}
\alias{setup_contrasts}
\title{Setup contrasts for downstream Differential Expression Analysis}
\usage{
setup_contrasts(dataset, contrast_list, random_variables = NULL)
}
\arguments{
\item{dataset}{your dataset. Make sure you've already imported sample metadata (so each sample is assigned to a sample group)}

\item{contrast_list}{a list that captures all contrasts that you want to compare. Check the examples for details.}

\item{random_variables}{a vector of column names in your sample metadata table that are added as additional(!) regression terms in each statistical contrast tested downstream. Note that not all DEA algorithms may support this, consult documentation on individual methods for more info (start at \code{dea_algorithms()} )}
}
\description{
Note that a MS-DAP contrast for "A vs B" will return foldchanges for B/A in downstream output tables and data visualizations. For example, for the contrast "control vs disease" a positive log2 foldchange implies protein abundances are higher in the "disease" sample group.
}
\examples{
# a simple wild-type knockout study with only 2 groups, WT and KO
\dontrun{contrast_list = list(c("WT", "KO"))}
# multiple contrasts
\dontrun{contrast_list = list(c("cntrl", "group1"), c("cntrl", "group2"), c("group1", "group2"))}
# An example of multi-groups. The first contrast is just control-vs-group1
# as in the previous example. In the second contrast we compare control against
# multiple-groups combined as if they were one. Note the nested lists!
\dontrun{
contrast_list = list(c("control", "group1"), list("control", c("group1", "group2")))
}

}
