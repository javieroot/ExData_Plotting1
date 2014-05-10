# Save the plot
png("./plots/plot2.png", height = 480, width = 480, units = "px", bg = "white")
# Plot the data
plot(datos$date_full,
     datos$Global_active_power,
     type = "l",
     main = "Global Active Power",
     xlab = "",
     ylab = "Global Active power(kilowatts)")

dev.off()
