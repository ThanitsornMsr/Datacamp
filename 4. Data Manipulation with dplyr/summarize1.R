# Summarize to find minimum population, maximum unemployment, and average income
counties_selected %>%
  summarize(min_population = min(population), 
            max_unemployment = max(unemployment),
            average_income = mean(income))