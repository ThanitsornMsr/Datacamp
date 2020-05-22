babynames %>%
  group_by(name) %>%
  mutate(name_total = sum(n), name_max = max(n)) %>%
  # Ungroup the table 
  ungroup() %>%
  # Add the fraction_max column containing the number by the name maximum 
  mutate(fraction_max = n / name_max)