# temp is already defined in the workspace
a <- c(3, 7, 9, 6, -1)
b <- c(6, 9, 12, 13, 5)
c <- c(4, 8, 3, -1, -3)
d <- c(1, 4, 7, 2, -2)
e <- c(5, 7, 9, 4, 2)
f <- c(-3, 5, 8, 9, 4)
g <- c(3, 6, 9, 4, 1)

temp <- list(a = a, b = b, c = c, d = d, e = e, f = f, g = g)
temp

# Finish function definition of extremes_avg
extremes_avg <- function(x) {
  ( min(x) + max(x) ) / 2
}

# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)

# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)