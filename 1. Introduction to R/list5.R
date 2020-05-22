# Use the table from the exercise to define the comments and scores vectors
newscores <- c(4.6, 5, 4.8, 5, 4.2)
newcomments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot") 

# Save the average of the scores vector as avg_review  
avg_review <- mean(newscores)

# Combine scores and comments into the reviews_df data frame
reviews_df <- data.frame(newscores, newcomments)

# Create and print out a list, called departed_list
movie_title <- "The Departed"
movie_actors <- c("Leonardo DiCaprio", "Matt Damon", "Jack Nicholson", "Mark Wahlberg", "Vera Farmiga", "Martin Sheen")
departed_list <- list(movie_title, movie_actors, reviews_df, avg_review)
departed_list