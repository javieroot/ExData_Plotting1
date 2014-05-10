# # changing work directory
#  setwd("/home/javier/Respaldo/Data Science Specialization/repositorios/ExData_Plotting1")

# Reading data
datos <- read.table("household_power_consumption.txt",
                    header = TRUE, sep = ";",
                    stringsAsFactors = F)

# data subset, only be using data from the dates 2007-02-01 and 2007-02-02
datos <- datos[datos$Date == "1/2/2007" | datos$Date == "2/2/2007", ]

# Changing Date column to date format
datos$Date <- as.Date(datos$Date, "%d/%m/%Y")

# Changing columns from text to numeric
datos[, 3:9] <- sapply(datos[, 3:9], as.numeric)


# Plotting the graphics 1, 2, 3 y 4
source("./scripts/plot1.R")
source("./scripts/plot2.R")
source("./scripts/plot3.R")
source("./scripts/plot4.R")
