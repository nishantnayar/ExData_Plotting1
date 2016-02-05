## set the working directory and invoke the script to load the data

setwd("C:/Users/nnayar/Documents/Personal/Working Directory/ExData_Plotting1")

source("Load_Data.R")

## Script to create the second plot

globalActivePower <- as.numeric(sampledata$Global_active_power)
datetime <- strptime(paste(sampledata$Date, sampledata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", 
    width=480, 
    height=480)

plot(datetime, 
     globalActivePower, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")
dev.off()