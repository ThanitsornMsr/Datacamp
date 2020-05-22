Lego_themes %>%
  inner_join(Lego_themes, by = c("parent_id" = "id"))

Lego_themes %>%
  inner_join(Lego_themes, by = c("parent_id" = "id"), suffix = c("_child", "_parent")) %>%
  filter(name_child == "The Lord of the Rings")

Lego_themes %>%
  inner_join(Lego_themes, by = c("parent_id" = "id"), suffix = c("_child", "_parent")) %>%
  filter(parent_id == 566)