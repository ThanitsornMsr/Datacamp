Lego_parts %>%
  # Count the part_cat_id
  count(part_cat_id) %>%
  # Right join part_categories
  right_join(Lego_part_categories, by = c("part_cat_id" = "id")) %>%
  # Filter for NA
  filter(is.na(n))