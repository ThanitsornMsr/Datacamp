a <- c(3, 7, 9, 6, -1)
b <- c(6, 9, 12, 13, 5)
c <- c(4, 8, 3, -1, -3)
d <- c(1, 4, 7, 2, -2)
e <- c(5, 7, 9, 4, 2)
f <- c(-3, 5, 8, 9, 4)
g <- c(3, 6, 9, 4, 1)

temp <- list(a = a, b = b, c = c, d = d, e = e, f = f, g = g)
temp

# Use lapply() to find each day's minimum temperature
lapply(temp, min)

# Use sapply() to find each day's minimum temperature
sapply(temp, min, USE.NAMES = FALSE)

# Use lapply() to find each day's maximum temperature
lapply(temp, max)

# Use sapply() to find each day's maximum temperature
sapply(temp, max)