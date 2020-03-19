# Mean Annual Temperature Package
# Data and Documentation

# upload packages
library(tidyverse)
library(devtools)
library(roxygen2)

temperature = runif(min=10, max=90, n=100)
country_capital = seq(1, 100, by=1)

mean_temp = data.frame(temperature, country_capital)

view(mean_temp)

# Documentation for mean annual temperature data

#' mean_temp from (package name here)
#'
#' Data from Erin Ristig, mean annual temperature measurements from 100 country capitals
#'
#' @format A data frame with 100 rows and 2 columns
#' \describe{
#' \item{temperature}{mean temperature between 10 and 90 (degrees farenheit)}
#' \item{country_capital}{country capitals numbered 1-100}
#' }
#'
#' @source: Erin Ristig
#'
