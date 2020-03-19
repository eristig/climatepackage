#' Assess risk of flooding from sea level rise
#'Parameters include property characteristics and water characteristics.
#'
#' @param property_elevation  is the feet above sea level of the property. Options are between 0 to 100ft.
#' @param flood_proofing_degree  how the infrastructure of the building on the property is prepared for flooding, such as building on stilts or sandbags around the perimeter.
#' values ranked from 0 (not flood proof) to 5 (very flood proof).
#' @param sea_level_rise (feet)
#' @param storm_surge (feet)
#' @author Erin Ristig
#' @examples flood_risk(data_frame)
#' @return Ranking (Very Low to Extreme) of how vulnerable a property is to being flooded.

# function
flood_risk = function(index_data) {
  
  # assign variable values
  property_elevation_score = ifelse(index_data$property_elevation == 0, 5,
                                  ifelse(index_data$property_elevation < 30, 3,
                                         ifelse(index_data$propery_elevation <= 99, 2,
                                                ifelse(index_data$property_elevation >= 100, 2, NA))))
  
  flood_proofing_score = ifelse(index_data$flood_proofing_degree == 0, 5,
                               ifelse(index_data$flood_proofing_degree == 1, 4,
                                      ifelse(index_data$flood_proofing_degree == 2, 3,
                                             ifelse(index_data$flood_proofing_degree == 3, 3,
                                                    ifelse(index_data$flood_proofing_degree == 4, 2,
                                                           ifelse(index_data$flood_proofing_degree == 5, 1, NA))))))
  
  sea_level_rise_score = ifelse(index_data$sea_level_rise < 3, 1,
                             ifelse(index_data$sea_level_rise < 6, 2,
                                    ifelse(index_data$sea_level_rise < 9, 3,
                                           ifelse(index_data$sea_level_rise < 12, 4,
                                                  ifelse(index_data$sea_level_rise >= 15, 5, NA)))))
  
  storm_surge_score = ifelse(index_data$storm_surge < 5, 5,
                          ifelse(index_data$storm_surge < 4, 4,
                                 ifelse(index_data$storm_surge < 3, 3,
                                        ifelse(index_data$storm_surge < 2, 2,
                                               ifelse(index_data$storm_surge < 1, 1)))))
  
  # determine vulnerability score
  vulnerability_score = (property_elevation_score + flood_proofing_score + sea_level_rise_score + storm_surge_score )/4
  
  # qualitative vulnerability score
  vulnerability_assessment = ifelse(vulnerability_score <= 1, "very Low",
                                    ifelse(vulnerability_score <= 2, "Low",
                                           ifelse(vulnerability_score <= 3, "Moderate",
                                                  ifelse(vulnerability_score <=4, "High",
                                                         ifelse(vulnerability_score <= 5, "Extreme")))))
  
  vulnerability_assessment = as.data.frame(vulnerability_assessment)
  
  # combine score to entered data frame
  vulnerability_assessment_df = cbind(index_data, vulnerability_assessment)
  
  
  return(vulnerability_assessment_df)
  
}

# test function
flood_risk(flood_data)