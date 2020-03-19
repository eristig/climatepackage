# Data and documentation
precip = runif(min=0, max=50, n=100)

# Create a data frame
example_precip_df = data.frame(precip)

# run function
max_min_precip(example_precip_df)