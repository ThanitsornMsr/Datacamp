Lego_sets %>%
  # Add inventories using an inner join 
  inner_join(Lego_inventories, by = "set_num") %>%
  # Add inventory_parts using an inner join 
  inner_join(Lego_inventory_parts, by = c("id" = "inventory_id"))