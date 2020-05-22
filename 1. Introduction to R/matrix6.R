box_office2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
star_wars_matrix2 <- matrix(box_office2, nrow = 3, byrow = TRUE, dimnames = list(c("The Phantom Menace", "Attack of the Clones", "Attack of the Clones"), c("US", "non-US")))

# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix
star_wars_matrix2

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)