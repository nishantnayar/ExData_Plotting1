## set the working directory and invoke the script to load the data

setwd("C:/Users/nnayar/Documents/Personal/Working Directory/ExData_Plotting1")

source("Load_Data.R")

## Script to create the first plot

globalActivePower <- as.numeric(sampledata$Global_active_power)
png("plot1.png", 
    width=480, 
    height=480, 
    units = "px", 
    bg = "transparent")

hist(globalActivePower, 
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")
dev.off()