# DATA FRAMES #######
   
mtcars  
   
# Viewing the first few rows of mtcars
head(mtcars)
  
# Viewing the last few rows
tail(mtcars)

# Viewing the structure of mtcars
str(mtcars)

# Data Manipulation ====
#selecting specific columns of the data
selected_data <- mtcars[, c("mpg", "cyl", "hp")]
head(selected_data) 

# Interested in specific observations/ Filter rows based on a condition
filtered_data <- mtcars[mtcars$cyl == 6, ]
head(filtered_data) 

# Sort the data based on a specific column.
arranged_data <- mtcars[order(mtcars$mpg, decreasing = TRUE), ]
head(arranged_data)

#Basic Data Analysis ==== 
# Create a new column from existing ones.
mtcars$weight_per_hp <- mtcars$wt / mtcars$hp
head(mtcars)

# Calculate summary statistics for columns
mean_mpg <- mean(mtcars$mpg)
max_hp <- max(mtcars$hp)

# Aggregate data by a specific column.
agg <- aggregate(mpg ~ cyl, data = mtcars, FUN = mean)

