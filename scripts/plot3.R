# Save the plot
png("./plots/plot3.png", height = 480, width = 480, units = "px", bg = "transparent")
# Plot the data
plot(datos$date_full,
     datos$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")

lines(datos$date_full,
      datos$Sub_metering_2,
      col="red")

lines(datos$date_full,
      datos$Sub_metering_3,
      col="blue")

# add a legend 
legend("topright",
       lty = 1,
       cex = .75,
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_1", "Sub_metering_1"))

dev.off()