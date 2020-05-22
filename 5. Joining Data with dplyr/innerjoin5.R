# Count the number of colors and sort
Lego_sets %>%
  inner_join(Lego_inventories, by = "set_num") %>%
  inner_join(Lego_inventory_parts, by = c("id" = "inventory_id")) %>%
  inner_join(Lego_colors, by = c("color_id" = "id"), suffix = c("_set", "_color")) %>%
  count(name_color, sort = TRUE)