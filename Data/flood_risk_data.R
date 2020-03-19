library(tidyverse)

# mock data 

property_elevation = sample(x=c(0, 30, 90, 100), size = 100, replace = T)
flood_proofing_degree = sample(x=0:5, size = 100, replace = T)
sea_level_rise = runif(min = 1, max = 15, n = 100)
storm_surge = runif(min = 0, max =5, n = 100)
property = seq(1, 100, by=1)


flood_data = data.frame(property_elevation, flood_proofing_degree, sea_level_rise, storm_surge, property)
