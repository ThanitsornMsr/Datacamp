# Use the suffix argument to replace .x and .y suffixes
Lego_parts %>% 
  inner_join(Lego_part_categories, by = c("part_cat_id" = "id"), suffix = c("_part", "_category"))