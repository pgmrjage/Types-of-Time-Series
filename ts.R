# Set working directory to the folder containing your dataset
setwd("D:\\School Workspace\\Source Codes\\R Language\\Time Series")

# Load the dataset (adjust the path as needed)
# Install and load TTR for Simple Moving Average (SMA)
install.packages("TTR")
library(TTR)

# Calculate the 12-month simple moving average of beer production
moving_avg <- SMA(df$Monthly.beer.production, n = 12)

# Plot the original data
plot(df$Month, df$Monthly.beer.production, type = "l", 
     main = "Monthly Beer Production with Moving Average", 
     xlab = "Date", ylab = "Beer Production")

# Add the moving average line
lines(df$Month, moving_avg, col = "red")

# Optionally, add a legend
legend("topright", legend = c("Original", "Moving Average"), col = c("blue", "red"), lty = 1)
