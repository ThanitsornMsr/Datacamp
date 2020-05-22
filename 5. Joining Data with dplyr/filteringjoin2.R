# Use inventory_parts to find colors included in at least one set
Lego_colors %>%
  semi_join(Lego_inventory_parts, by = c("id" = "color_id"))