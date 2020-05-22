counties_selected <- counties %>%
  select(state, county, population)

# Filter for counties in the state of California that have a population above 1000000
counties_selected %>%
  filter(state == "California", population > 1000000) 