# Save the plot
png("./plots/plot4.png", height = 480, width = 480, units = "px", bg = "transparent")

# all plots on one page
par(mfrow=c(2,2)) 
# Plot the data
plot(datos$date_full,
     datos$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power")


plot(datos$date_full,
     datos$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")


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
# add a legend 
legend("topright",
       lty = 1,
       cex = .75,
       bty = "n",
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_1", "Sub_metering_1"))


plot(datos$date_full,
     datos$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")



dev.off()
