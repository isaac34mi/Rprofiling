% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prof.R
\name{sample_data}
\alias{sample_data}
\title{Sample of dataset}
\usage{
sample_data(data)
}
\arguments{
\item{data}{is the dataset that you want to digest. dataset class must be dataframe or tibble.}
}
\value{
Returns a sample(20 rows if dataset is more than 20 rows) of the dataset
}
\description{
Sample of dataset
}
\examples{
sample_data(mtcars)
}
