
# Read the CSV file containing the data set
data <- graduate_salaries

# View the structure of the data set
str(data)

# Assuming the salary data is in a column named 'Salary('000)'
# Extract the salary column
salaries <- data$Salary

# Assuming the population mean you want to test against
pop_mean_salary <- 700  # The population mean in dollars (in this case, $70000)

# Perform one-sample t-test
t_test_result <- t.test(salaries, mu = pop_mean_salary)

# Print t-test result
print(t_test_result)
