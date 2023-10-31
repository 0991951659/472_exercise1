## Assignment 2. Exercise 1 

# Function "hundred": takes a dataset as a single argument and times the values by 100 
## the function returns the values multiplied by 100

hundred <- function(data) {
  # Identify numeric columns
  numeric_cols <- sapply(data, is.numeric)
  
  # Multiply only the numeric columns by 100
  data[numeric_cols] <- data[numeric_cols] * 100
  
  return(data)
}


# Test with the "iris" data: a built-in R dataset with four numeric variables containing 
# measurements of 4 different attributes for 50 flowers 
data("iris")
hundred(iris)
# function now returns the transform data where all the numeric columns are multiplied by 100 
