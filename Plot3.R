## set the working directory and invoke the script to load the data

setwd("C:/Users/nnayar/Documents/Personal/Working Directory/ExData_Plotting1")

source("Load_Data.R")

## Script to create the third plot

datetime <- strptime(paste(sampledata$Date, sampledata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(sampledata$Global_active_power)
subMetering1 <- as.numeric(sampledata$Sub_metering_1)
subMetering2 <- as.numeric(sampledata$Sub_metering_2)
subMetering3 <- as.numeric(sampledata$Sub_metering_3)

png("plot3.png", 
    width=480, 
    height=480)

plot(datetime, 
     subMetering1, 
     type="l", 
     ylab="Energy Submetering", 
     xlab="")

lines(datetime, 
      subMetering2, 
      type="l", 
      col="red")

lines(datetime, 
      subMetering3, 
      type="l", 
      col="blue")

legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, 
       lwd=2.5, 
       col=c("black", "red", "blue"))
dev.off()