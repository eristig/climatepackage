# Test mean_annual_temp function

library(devtools)
library(testthat)
library(tidyverse)

# Example DF
temp = runif(min=10, max=90, n=50)
example_temp_df <- as.data.frame(temp)

# Function
meanannualtemp(example_temp_df)

# Test
test_that("meanannualtemp_works", {
  
  # Ensure calculated total_precip is always greater than 1
  expect_true(meanannualtemp(example_temp_df) > 0) 
  # Ensure class numeric values
  expect_type(example_temp_df$temp, "double")
  
  # Mock data to test function
  mock_data=data.frame(mock_temp = c(11, 25, 89, 77, 43))
  # Test function
  expect_equal(unname(meanannualtemp(mock_data)), 49) # correct
  expect_equal(unname(meanannualtemp(mock_data)), 33) # error
})

