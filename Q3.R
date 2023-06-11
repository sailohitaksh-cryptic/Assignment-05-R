# Set seed for reproducibility
set.seed(123)

# Generate random data
random_data <- matrix(0, nrow = 500, ncol = 10)

# Columns 1 to 4: [-10, 10]
random_data[, 1:4] <- matrix(runif(500 * 4, -10, 10), nrow = 500)

# Columns 5 to 8: [10, 20]
random_data[, 5:8] <- matrix(runif(500 * 4, 10, 20), nrow = 500)

# Columns 9 to 10: [-100, 100]
random_data[, 9:10] <- matrix(runif(500 * 2, -100, 100), nrow = 500)

# (i) K-Means clustering
kmeans_clusters <- kmeans(random_data, centers = 3)  # Change the number of centers as needed

# Plotting distance metric for K-Means
plot(kmeans_clusters$size, type = "b", xlab = "Cluster", ylab = "Size", main = "K-Means Clustering")

# (ii) Hierarchical clustering
hierarchical_clusters <- hclust(dist(random_data))

# Plotting distance metric for Hierarchical clustering
plot(hierarchical_clusters$height, type = "b", xlab = "Merge", ylab = "Height", main = "Hierarchical Clustering")
