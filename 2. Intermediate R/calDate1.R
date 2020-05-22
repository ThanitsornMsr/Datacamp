day1 <- as.Date("2020-04-30")
day2 <- as.Date("2020-05-02")
day3 <- as.Date("2020-05-07")
day4 <- as.Date("2020-05-13")
day5 <- as.Date("2020-05-18")

# day1, day2, day3, day4 and day5 are already available in the workspace
day1
day2
day3
day4
day5

# Difference between last and first pizza day
day5 - day1

# Create vector pizza
pizza <- c(day1, day2, day3, day4, day5)

# Create differences between consecutive pizza days: day_diff
day_diff <- diff(pizza)
day_diff

# Average period between two consecutive pizza days
mean(day_diff)

