Lego_inventory_version_1 <- Lego_inventories %>%
  filter(version == 1)

# Join versions to sets
Lego_sets %>%
  left_join(Lego_inventory_version_1, by = c("set_num")) %>%
  # Filter for where version is na
  filter(is.na(version))