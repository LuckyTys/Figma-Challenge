import matplotlib.pyplot as plt
import numpy as np

# Data
advertising_expenses = [39, 65, 62, 90, 82, 75, 25, 98, 36, 78, 48, 100]
sales = [47, 53, 58, 86, 62, 68, 60, 91, 51, 84, 52, 80]

# Calculate regression line
x = np.array(advertising_expenses)
y = np.array(sales)
n = len(x)
sum_x = np.sum(x)
sum_y = np.sum(y)
sum_xy = np.sum(x * y)
sum_x_squared = np.sum(x**2)

b1 = (n * sum_xy - sum_x * sum_y) / (n * sum_x_squared - sum_x**2)
b0 = (sum_y - b1 * sum_x) / n

# Regression line equation
regression_line = b0 + b1 * x

# Plot
plt.scatter(advertising_expenses, sales, color='blue', label='Data Points')
plt.plot(advertising_expenses, regression_line, color='red', label='Regression Line')
plt.title('Scatter Plot of Advertising Expenses vs Sales with Regression Line')
plt.xlabel('Advertising Expenses (1000 Rs)')
plt.ylabel('Sales (1000 Rs)')
plt.legend()
plt.grid(True)
plt.show()
