babynames_fraction <- babynames %>%
  group_by(name) %>%
  mutate(year_total = sum(n), fraction = n /year_total)

babynames_fraction %>%
  # Arrange the data in order of name, then year 
  arrange(name, year) %>%
  # Group the data by name
  group_by(name) %>%
  # Add a ratio column that contains the ratio between each year 
  mutate(ratio = fraction / lag(fraction))