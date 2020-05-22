# temp is already prepared for you in the workspace
a <- c(3, 7, 9, 6, -1)
b <- c(6, 9, 12, 13, 5)
c <- c(4, 8, 3, -1, -3)
d <- c(1, 4, 7, 2, -2)
e <- c(5, 7, 9, 4, 2)
f <- c(-3, 5, 8, 9, 4)
g <- c(3, 6, 9, 4, 1)

temp <- list(a = a, b = b, c = c, d = d, e = e, f = f, g = g)
temp

# Definition of below_zero()
below_zero <- function(x) {
  return(x[x < 0])
}

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)
freezing_s

# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)
freezing_l

# Are freezing_s and freezing_l identical?
identical(freezing_s, freezing_l)