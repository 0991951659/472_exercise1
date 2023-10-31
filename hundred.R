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



# Update the function by the adding the operation type as a second argument 
  hundred <- function(data, operation_type) {
    # Check if the input is a data frame
    if (!is.data.frame(data)) {
      stop("Input data must be a data frame.")
    }
    
    # Identify numeric columns
    numeric_cols <- sapply(data, is.numeric)
    
    if (operation_type == "multiply") {
      # Multiply only the numeric columns by 100
      data[numeric_cols] <- data[numeric_cols] * 100
    } else if (operation_type == "sum") {
      # Add 100 to the numeric columns
      data[numeric_cols] <- data[numeric_cols] + 100
    } else if (operation_type == "subtract") {
      # Subtract 100 from the numeric columns
      data[numeric_cols] <- data[numeric_cols] - 100
    } else if (operation_type == "divide") {
      # Divide the numeric columns by 100
      data[numeric_cols] <- data[numeric_cols] / 100
    } else {
      stop("Invalid operation type.")
    }
    
    return(data)
  }
  
  # adding multiply operation as the second argument for the iris dataset
  hundred(iris, "multiply")
