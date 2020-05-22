ticket_prices <- c(5.0, 5.0, 6, 6, 7, 7, 4, 4, 4.5, 4.5, 4.9, 4.9)
ticket_prices_matrix <- matrix(ticket_prices, byrow = TRUE, nrow = 6, dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi", "The Phantom Menace", "Attrack of the Clones", "Revenge of the Sith"), c("US", "non-US")))

# all_wars_matrix and ticket_prices_matrix are available in your workspace
all_wars_matrix
ticket_prices_matrix

# Estimated number of visitors
visitors <- all_wars_matrix / ticket_prices_matrix
visitors

# US visitors
us_visitors <- visitors[,1]
us_visitors

# Average number of US visitors
mean(us_visitors)