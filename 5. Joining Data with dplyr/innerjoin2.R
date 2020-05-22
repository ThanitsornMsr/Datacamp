# Combine the parts and inventory_parts tables
Lego_parts %>%
  inner_join(Lego_inventory_parts, by = "part_num")