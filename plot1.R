# Coursera Data Science: Exploratory Data Analsis Course Project week 1
#########################################

## Load  data
rm(list= ls())
data <- read.table("household_power_consumption.txt", header = T , sep =";", na.strings= "?")

# convert  date to a Data Class
data$Date <- as.Date(data$Date, format = "%d/%m/%Y)

## subset the data
data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

## Conversion of dates and times
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")


## PLOT 1

attach (data)
hist(Global_active_power, main= "Global Active Power",
                     xlab=" Kilowatts", col="Red")
                     
## Save the plot
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off ()'
detach (data)


