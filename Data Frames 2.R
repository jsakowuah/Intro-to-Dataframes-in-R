mtcars
head(mtcars)
# Check for missing values
is.na(mtcars)
sum(is.na(mtcars))

# Impute missing values in 'mpg' with the mean
mtcars$mpg[is.na(mtcars$mpg)] <- mean(mtcars$mpg, na.rm = TRUE)

cor_cyl_hp <- cor(mtcars$cyl, mtcars$hp)
print(paste("Correlation between 'cyl' and 'hp':", cor_cyl_hp))

library(ggplot2)
# Create a scatterplot for 'cyl' and 'hp'
ggplot(mtcars, aes(x = cyl, y = hp)) +
  geom_point(color = "darkblue") +
  labs(title = "Scatterplot of 'cyl' vs 'hp'",
       x = "Number of Cylinders",
       y = "Horsepower")


# Aggregate data by cylinder using dplyr
library(dplyr)
agg_dplyr <- mtcars %>% 
  group_by(cyl) %>% 
  summarize(avg_mpg = mean(mpg))

# Print the result of dplyr aggregation
print(agg_dplyr)
# Create a histogram for 'hp'
ggplot(mtcars, aes(x = hp)) +
  geom_histogram(binwidth = 10, fill = "skyblue", color = "black", alpha = 0.7) +
  
  # Labels and Title
  labs(title = "Histogram of Horsepower ('hp')",
       x = "Horsepower",
       y = "Frequency") +
  
  # Adjusting theme for better visualization
  theme_minimal()