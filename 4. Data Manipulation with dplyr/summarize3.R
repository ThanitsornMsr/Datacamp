# Add a density column, then sort in descending order
counties_selected %>%
  group_by(state) %>%
  summarize(total_area = sum(land_area),
            total_population = sum(population)) %>%
  mutate(density = total_population / total_area) %>%
  arrange(desc(density))
