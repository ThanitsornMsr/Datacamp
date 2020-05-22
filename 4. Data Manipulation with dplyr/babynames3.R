# Filter for the names Steven, Thomas, and Matthew 
selected_names <- babynames %>%
  filter(name %in%c("Steven", "Thomas", "Matthew"))