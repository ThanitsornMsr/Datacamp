# Convert astro to vector of Date objects: astro_dates
astro
#spring        summer          fall        winter 
# "March 1, 15"      "June 1, 15" "September 1, 15"  "December 1, 15"
astro_date <- as.Date(astro, format = "%d-%b-%Y")
astro_date

# Convert meteo to vector of Date objects: meteo_dates
meteo
# "March 1, 15"      "June 1, 15" "September 1, 15"  "December 1, 15"
class(meteo)
meteo_dates <- as.Date(meteo,format = "%B %d, %y")
meteo_dates

# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(astro_date - meteo_dates))
