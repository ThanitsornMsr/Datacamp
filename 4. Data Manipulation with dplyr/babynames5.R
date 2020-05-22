# Find the year each name is most common 
babynames %>%
  group_by(year) %>%
  mutate(year_total = sum(n)) %>%
  ungroup() %>%
  mutate(fraction = n / year_total) %>%
  group_by(name) %>%
  top_n(1, fraction)
