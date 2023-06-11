# Set seed for reproducibility
set.seed(123)

# Generate random data
random_data <- matrix(runif(600 * 15, -100, 100), nrow = 600, ncol = 15)

# (i) Scatter graph between Column 5 and Column 6
plot(random_data[, 5], random_data[, 6], xlab = "Column 5", ylab = "Column 6", main = "Scatter Graph")

# (ii) Histogram of each column in single graph
par(mfrow = c(3, 5))  # Set the layout to a 3x5 grid

for (i in 1:15) {
  hist(random_data[, i], main = paste("Histogram of Column", i), xlab = "Value", col = "lightblue")
}

# (iii) Box plot of each column in single graph
par(mfrow = c(3, 5))  # Set the layout to a 3x5 grid

for (i in 1:15) {
  boxplot(random_data[, i], main = paste("Box Plot of Column", i), ylab = "Value", col = "lightgreen")
}
