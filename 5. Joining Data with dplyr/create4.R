parts_joined <- batman_parts %>%
  full_join(star_wars_parts, by = c("part_num", "color_id"), suffix = c("_batman", "_star_wars")) %>%
  replace_na(list(n_batman = 0, n_star_wars = 0))

parts_joined %>%
  # Sort the number of star wars pieces in descending order 
  arrange(desc(n_star_wars)) %>%
  # Join the colors table to the parts_joined table
  inner_join(Lego_colors, by = c("color_id" = "id")) %>%
  # Join the parts table to the previous join 
  inner_join(Lego_parts, by = c("part_num"), suffix = c("_color", "_part"))
