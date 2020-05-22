# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if (print_info) {
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}

# Some calls of the pow_two() function
pow_two(5)
pow_two(5, FALSE)
pow_two(5, TRUE)