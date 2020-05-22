batmobile_colors <- batmobile %>%
  group_by(color_id) %>%
  summarize(total = sum(quantity))
batmobile_colors

batwing_colors <- batwing %>%
  group_by(color_id) %>%
  summarize(total = sum(quantity))
batwing_colors

colors_joined <- batmobile_colors %>%
  full_join(batwing_colors, by = "color_id", suffix = c("_batmobile", "_batwing")) %>%
  replace_na(list(total_batmobile = 0, total_batwing = 0)) %>%
  inner_join(Lego_colors, by = c("color_id" = "id")) %>%
  mutate(total_batmobile = total_batmobile / sum(total_batmobile),
         total_batwing = total_batwing / sum(total_batwing), 
         difference = total_batmobile - total_batwing)
colors_joined

library(ggplot2)
library(forcats)

color_palette <- setNames(colors_joined$rgb, colors_joined$name)
color_palette

colors_joined %>%
  mutate(name = fct_reorder(name, difference)) %>%
  ggplot(aes(name, difference, fill = name)) +
  geom_col() +
  coord_flip() +
  scale_fill_manual(values = color_palette, guide = FALSE)