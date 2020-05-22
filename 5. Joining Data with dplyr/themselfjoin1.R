Lego_themes %>% 
  # Inner join the themes table
  inner_join(Lego_themes, by = c("id" = "parent_id"), suffix = c("_parent", "_child")) %>%
  # Filter for the "Harry Potter" parent name 
  filter(name_parent == "Harry Potter")