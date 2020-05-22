# Join themes to itself again to find the grandchild relationships
Lego_themes %>% 
  inner_join(Lego_themes, by = c("id" = "parent_id"), suffix = c("_parent", "_child")) %>%
  inner_join(Lego_themes, by = c("id_child" = "parent_id"), suffix = c("_parent", "_grandchild")) 