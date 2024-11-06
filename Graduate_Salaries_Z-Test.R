# Read the CSV file containing the dataset
data <-graduate_salaries

# Assuming the salary data is in a column named 'Salary('000)'
# Extract the salary column
salaries <- data$Salary..000.

# Population mean (in thousands)
pop_mean_salary <- 700  # The population mean in this case (in thousands)

# Population standard deviation (hypothetical)
pop_std_dev <- 80000  # Population standard deviation (in thousands)

# Calculate sample mean and sample standard deviation
sample_mean <- mean(salaries)
sample_std_dev <- sd(salaries)

# Calculate z-score
z_score <- (sample_mean - pop_mean_salary) / (pop_std_dev / sqrt(length(salaries)))

# Calculate p-value (two-tailed test)
p_value <- 2 * pnorm(-abs(z_score))

# Significance level (alpha)
alpha <- 0.05  # You can change this value according to your desired significance level

# Print z-score and p-value
cat("Z-Score:", z_score, "\n")
cat("P-Value:", p_value, "\n")

# Compare p-value with significance level
if (p_value < alpha) {
  cat("Reject the null hypothesis (significant difference).")
} else {
  cat("Fail to reject the null hypothesis (insufficient evidence).")
}
