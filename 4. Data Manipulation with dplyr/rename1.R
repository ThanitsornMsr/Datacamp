# Rename the n column to num_counties
counties %>%
  count(state) %>%
  rename(num_counties = n)