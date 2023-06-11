# Set seed for reproducibility
set.seed(123)

# Generate random data
random_data <- matrix(runif(100 * 30, 1, 200), nrow = 100, ncol = 30)

# (i) Replace values with NA between [10, 60]
random_data[10:60, ] <- NA

# (ii) Count number of rows with missing values
rows_with_missing <- sum(rowSums(is.na(random_data)) > 0)
print(paste("Number of rows with missing values:", rows_with_missing))

# (iii) Replace NA values with column mean
random_data <- apply(random_data, 2, function(x) {
  x[is.na(x)] <- mean(x, na.rm = TRUE)
  return(x)
})

# (iv) Calculate Pearson correlation and plot heat map
correlation <- cor(random_data, use = "pairwise.complete.obs")
heatmap(correlation)

# (v) Select columns with correlation <= 0.7
columns_to_keep <- which(apply(correlation, 2, function(x) any(abs(x) <= 0.7)))

# Normalize values between 0 and 10
normalized_data <- apply(random_data, 2, function(x) {
  (x - min(x, na.rm = TRUE)) / (max(x, na.rm = TRUE) - min(x, na.rm = TRUE)) * 10
})

# Replace values with 1 if value <= 0.5, otherwise with 0
replaced_data <- ifelse(normalized_data <= 0.5, 1, 0)

