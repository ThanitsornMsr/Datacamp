# The tic-tac-toe matrix ttt has already been defined for you
ttt = matrix(c("o", NA, "x", NA ,"O" ,"O", "X", NA, "X"), byrow = TRUE, nrow = 3)
ttt

# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i ,"and column" ,j ,"the board contains", ttt[i, j]))
  }
}