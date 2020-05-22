# Summarize to find the total population
counties_selected %>%
  group_by(region, state) %>%
  summarize(total_pop = sum(population))
