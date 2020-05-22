counties_selected <- counties %>%
  select(state, county, population)

# Filter for counties with a population above 1000000
counties_selected %>%
  filter(population > 1000000)