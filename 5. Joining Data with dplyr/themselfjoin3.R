Lego_themes %>% 
  # Left join the themes table to its own children
  left_join(Lego_themes, by = c("id" = "parent_id"), suffix = c("_parent", "_child")) %>%
  # Filter for themes that have no child themes
  filter(is.na(name_child))