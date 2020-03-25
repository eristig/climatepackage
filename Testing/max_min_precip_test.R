# Test for Function - max_min_precip

library(devtools)
library(testthat)

# Test
test_that("max_min_precip_works",
          
          {# Check that min precipitation is less than max
            expect_true(max_min_precip(example_precip_df)$min < max_min_precip(example_precip_df)$max)
            
            # Ensure values in  data are class double
            expect_type(example_precip_df$precip, "double")
            
            # Mock data to test function 
            mock_data = data.frame(mock_precip = c(5, 12, 37, 49, 25, 19))
            
expect_equal(unname(max_min_precip(mock_data)$max), 49) # correct
expect_equal(unname(max_min_precip(mock_data)$max), 25) # error
expect_equal(unname(max_min_precip(mock_data)$min), 5) # correct
expect_equal(unname(max_min_precip(mock_data)$min), 37) #error
          })