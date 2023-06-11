# Set seed for reproducibility
set.seed(123)

# Generate random data
random_data <- matrix(runif(500 * 5, 5, 10), nrow = 500, ncol = 5)

# (i) Perform t-Test on each column
t_test_results <- apply(random_data, 2, function(x) t.test(x))

# (ii) Perform Wilcoxon Signed Rank test on each column
wilcoxon_results <- apply(random_data, 2, function(x) wilcox.test(x))

# (iii) Perform Two Sample t-Test and Wilcoxon Rank Sum test on Column 3 and Column 4
column_3 <- random_data[, 3]
column_4 <- random_data[, 4]

# Two Sample t-Test
t_test_3_4 <- t.test(column_3, column_4)

# Wilcoxon Rank Sum test
wilcoxon_3_4 <- wilcox.test(column_3, column_4)


t_test_results

wilcoxon_results

t_test_3_4

wilcoxon_3_4
