# Save the plot
png("./plots/plot2.png", height = 480, width = 480, units = "px", bg = "white")
# Plot the data
plot(paste(datos$Date,datos$Time),
     datos$Global_active_power,
     main = "Global Active Power",
     xlab = NULL,
     ylab = "Global Active power(kilowatts)")

dev.off()
