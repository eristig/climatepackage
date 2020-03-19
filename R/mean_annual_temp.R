# Mean Annual Temperature Function
# Function 1 for assignment #3

# Create function for mean annual temperature below

library(devtools)
library(roxygen2)

meanannualtemp = function(df) {
  
  total_temp = sum(df[,1])
  global_average_temp = (total_temp/length(df[,1]))
  
  # equation
  return(global_average_temp)
}

# upload packages
library(tidyverse)

temperature = runif(min=10, max=90, n=100)
country_capital = seq(1, 100, by=1)

mean_temp = data.frame(temperature, country_capital)


meanannualtemp(mean_temp)

# Mean Annual Temperature Package
# Data and Documentation



# Documentation for mean annual temperature data

#' Mean Annual Temperature
#'
#' This function calculates mean annual temperature. Data from Erin Ristig, mean annual temperature measurements from 100 country capitals
#'
#' @format A data frame with 100 rows and 2 columns
#' \describe{
#' \item{temperature}{mean temperature between 10 and 90 (degrees farenheit)}
#' \item{country_capital}{country capitals numbered 1-100}
#' }
#'
#' @author Erin Ristig
#' @return mean annual temperature (degrees farenheit)
