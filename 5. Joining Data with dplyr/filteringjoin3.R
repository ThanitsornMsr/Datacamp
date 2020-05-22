# Use filter() to extract version 1 
Lego_version_1_inventories <- Lego_inventories %>%
  filter(version == 1)

# Use anti_join() to find which set is missing a version 1
Lego_sets %>%
  anti_join(Lego_version_1_inventories, by = c("set_num"))