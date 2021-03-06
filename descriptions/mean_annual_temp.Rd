% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mean_annual_temp.R
\name{mean_annual_temp}
\alias{mean_annual_temp}
\title{Mean Annual Temperature}
\description{This function computes the mean annual temperature}
\usage{
mean_annual_temp(sum_temperature, no_of_samples)
}
\arguments{
  \item{sum_temperature}{is the cumulative temperature measurementsacross global capitals (degrees farenheit)}
  \item{no_of_samples}{is the number of country capitals where mean annual temperature was recorded}
}
\value{
mean_temperature (degrees farenheit)
}
\author{
Erin Ristig
}
\examples{
mean_annual_temp(1000, 20) 
}