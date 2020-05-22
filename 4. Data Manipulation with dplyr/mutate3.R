# Select the columns state, county, population, men, and women
counties_selected <- counties %>%
  select(state, county, population, men, women)
counties_selected  

# Calculate proportion_women as the fraction of the population made up of women
counties_selected %>%
  mutate(proportion_women = (women / population) )