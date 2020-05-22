Lego_inventory_parts_themes <- Lego_inventories %>%
  inner_join(Lego_inventory_parts, by = c("id" = "inventory_id")) %>%
  arrange(desc(quantity)) %>%
  select(-id, -version) %>%
  inner_join(Lego_sets, by = "set_num") %>%
  inner_join(Lego_themes, by = c("theme_id" = "id"), suffix = c("_set", "_theme"))

batman_colors <- Lego_inventory_parts_themes %>%
  # Filter the inventory_parts_themes table for the Batman theme
  filter(name_theme == "Batman") %>%
  group_by(color_id) %>%
  summarize(total = sum(quantity)) %>%
  # Add a percent column of the total divided by the sum of the total 
  mutate(percent = total / sum(total))

# Filter and aggregate the Star Wars set data; add a percent column
star_wars_colors <- Lego_inventory_parts_themes %>%
  filter(name_theme == "Star Wars") %>%
  group_by(color_id) %>%
  summarize(total = sum(quantity)) %>%
  mutate(percent = total / sum(total))

