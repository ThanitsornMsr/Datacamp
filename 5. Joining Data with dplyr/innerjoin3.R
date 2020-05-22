# Combine the parts and inventory_parts tables
Lego_inventory_parts %>%
  inner_join(Lego_parts, by = "part_num")