Lego_inventory_parts_joined %>%
  # Combine the sets table with inventory_parts_joined 
  inner_join(Lego_sets, by = c("set_num")) %>%
  # Combine the themes table with your first join 
  inner_join(Lego_themes, by = c("theme_id" = "id"), suffix = c("_set", "_theme"))

Lego_inventory_sets_themes <- Lego_inventory_parts_joined %>%
  inner_join(Lego_sets, by = "set_num") %>%
  inner_join(Lego_themes, by = c("theme_id" = "id"), suffix = c("_set", "_theme"))


batman <- Lego_inventory_sets_themes %>%
  filter(name_theme == "Batman")

star_wars <- Lego_inventory_sets_themes %>%
  filter(name_theme == "Star Wars")

