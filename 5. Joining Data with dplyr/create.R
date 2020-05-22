# create  batmobile, batwing
Lego_inventory_parts_joined <- Lego_inventories %>%
  inner_join(Lego_inventory_parts, by = c("id" = "inventory_id")) %>%
  select(-id, -version) %>%
  arrange(desc(quantity))

batmobile <- Lego_inventory_parts_joined %>%
  filter(set_num == "7784-1") %>%
  select(-set_num)

batwing <- Lego_inventory_parts_joined %>%
  filter(set_num == "70916-1") %>%
  select(-set_num)