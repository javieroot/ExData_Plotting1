# Save the plot
png("./plots/plot1.png", height = 480, width = 480, units = "px", bg = "white")
# Plot the histogram
histograma <- hist(datos$Global_active_power,
                   main = "Global Active Power",
                   xlab = "Global Active power(kilowatts)",
                   col  = "red")
dev.off()
