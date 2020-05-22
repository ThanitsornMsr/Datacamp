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

# Convert to vapply() expression
sapply(temp, max)
vapply(temp, max, numeric(1))

# Convert to vapply() expression
sapply(temp, function(x, y) { mean(x) > y }, y = 5)
vapply(temp, function(x, y) { mean(x) > y }, y = 5, logical(1))