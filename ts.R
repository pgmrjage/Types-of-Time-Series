# Set working directory to the folder containing your dataset
setwd("D:\\School Workspace\\Source Codes\\R Language\\Time Series")

# Load the dataset (adjust the path as needed)
# Install and load TTR for Simple Moving Average (SMA)
install.packages("TTR")
install.packages("forecast")
library(TTR)
library(forecast)
# ==================================================================
# SIMPLE MOVING AVERAGE
# ==================================================================

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
# ==================================================================



# ==================================================================
# DECOMPOSING A TIME SERIES
# ==================================================================

ts_data <- ts(df$Monthly.beer.production, frequency = 12)
decomposed_ts <- decompose(ts_data, type = "multiplicative")

plot(decomposed_ts)

trend_component <- decomposed_ts$trend
seasonal_component <- decomposed_ts$seasonal
residual_component <- decomposed_ts$random
# ==================================================================



# ==================================================================
# LOADING AND VISUALIZING A TIME SERIES DATASET
# ==================================================================

plot(df$Month,xlab = "Year", df$Monthly.beer.production, ylab = "Beer Production",n=12, type = "l")

# ==================================================================



# ==================================================================
# FITTING AN ARIMA MODEL
# ==================================================================

fit <- auto.arima(df$Monthly.beer.production)
summary(fit)

forecast_value <- forecast(fit, h = 12)
plot(forecast_value, main = "Beer Production")
# ==================================================================



# ==================================================================
# 
# ==================================================================






# ==================================================================



