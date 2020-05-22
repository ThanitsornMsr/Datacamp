#> login
#[1] "2020-05-04 10:18:04 UTC" "2020-05-09 09:14:18 UTC"
#[3] "2020-05-09 12:21:51 UTC" "2020-05-09 12:37:24 UTC"
#[5] "2020-05-11 21:37:55 UTC"
#> logout
#[1] "2020-05-04 10:56:29 UTC" "2020-05-09 09:14:52 UTC"
#[3] "2020-05-09 12:35:48 UTC" "2020-05-09 13:17:22 UTC"
#[5] "2020-05-11 22:08:47 UTC"

# login and logout are already defined in the workspace
login
class(login)
logout
class(logout)
# Calculate the difference between login and logout: time_online
time_online <- logout - login

# Inspect the variable time_online
time_online

# Calculate the total time online
total_online <- sum(time_online)
total_online

# Calculate the average time online
mean(time_online)