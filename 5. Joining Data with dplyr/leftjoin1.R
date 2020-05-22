millennium_falcon <- Lego_inventory_parts_joined %>%
  filter(set_num == "7965-1")

star_destroyer <- Lego_inventory_parts_joined %>%
  filter(set_num == "75190-1")

# Combine the star_destroyer and millennium_falcon tables
millennium_falcon %>%
  left_join(star_destroyer, by = c("part_num", "color_id"), suffix = c("_falcon", "_star_destroyer"))