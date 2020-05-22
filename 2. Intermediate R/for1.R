# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for (l in linkedin) {
  print(l)
}

# Loop version 2
for (i in 1:length(linkedin)) {
  print(linkedin[i])
}