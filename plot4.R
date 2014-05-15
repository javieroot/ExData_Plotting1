# changing work directory
setwd("/home/javier/Respaldo/Data Science Specialization/repositorios/ExData_Plotting1")
unzip("exdata-data-household_power_consumption.zip")


# Reading data
datos <- read.table("household_power_consumption.txt",
                    header = TRUE, sep = ";",
                    stringsAsFactors = F)

# data subset, only be using data from the dates 2007-02-01 and 2007-02-02
datos <- datos[datos$Date == "1/2/2007" | datos$Date == "2/2/2007", ]

# Changing columns from text to numeric
datos[, 3:9] <- sapply(datos[, 3:9], as.numeric)

# Building the date full
datos$date_full <- strptime(paste(datos$Date, datos$Time), "%d/%m/%Y %H:%M:%S")

# Changing Date column to date format
datos$Date <- as.Date(datos$Date, "%d/%m/%Y")

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
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


plot(datos$date_full,
     datos$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")



dev.off()
