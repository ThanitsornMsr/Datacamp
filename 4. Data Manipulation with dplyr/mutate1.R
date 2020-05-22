counties_selected <- counties %>%
  select(state, county, population, public_work)

# Add a new column public_workers with the number of people employed in public work
counties_selected %>%
  mutate(public_workers = (population * public_work) / 100)