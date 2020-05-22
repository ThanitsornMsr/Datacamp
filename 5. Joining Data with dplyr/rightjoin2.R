Lego_parts %>%
  count(part_cat_id) %>%
  right_join(Lego_part_categories, by = c("part_cat_id" = "id")) %>%
  # Use replace_na to replace missing values in the n column
  replace_na(list(n = 0))