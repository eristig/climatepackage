# Maximum and Minimum Monthly Precipitation
# Function #2 for Assignment #3

# create function that finds the maximum and minimum precipitation from a lsit

# uplaod packages
library(devtools)
library(roxygen2)
library(tidyverse)

#' Maximum and Minimum Precipitation
#'
#' This function returns the maximum and minimum precipitations from a list
#' @param df refers to the data frame which has a list of precipitation amounts
#' @author Erin Ristig
#' @examples max_min_precip(ex_df)
#' @return maximum and minimum precipitations

max_min_precip = function(df) {
  # parameters
  minprecip = apply(df, 2, min)
  maxprecip = apply(df, 2, max)
  return(list(min=  minprecip, max = maxprecip))
}

max_min_precip(example_precip_df)
# Documentation for maximum and minimum precipitation data

#' example_precip_df from (package name here)
#'
#' Data from Erin Ristig, list of 100 precipitation measurements
#'
#' @format A data frame with 100 rows and 1 column
#' \describe{
#' \item{precip}{recorded monthly precipitation at a site between 0 and 50 inches}
#' }
#'
#' @source: Erin Ristig
#'
