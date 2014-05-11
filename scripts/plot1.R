# Save the plot
png("./plots/plot1.png", height = 480, width = 480, units = "px", bg = "transparent")
# Plot the histogram
hist(datos$Global_active_power,
     main = "Global Active Power",
     xlab = "Global Active Power(kilowatts)",
     col  = "red")
dev.off()
