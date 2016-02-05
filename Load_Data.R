## Setting up environment for the project
## 1. Load the necessary packages
## 2. Clear any old variables
## 3. Set the Working Directory
## 4. Download and unzip the file
## 5. Create a small data set for the days between 1/2/2007 and 2/2/2007

library(RCurl)
library(ggplot2)
library(bitops)

rm(list = ls())
setwd("C:/Users/nnayar/Documents/Personal/Working Directory/ExData_Plotting1")


filename <- "exdata-data-household_power_consumption.zip"
fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if(!file.exists(filename)){
        download.file(fileurl, filename, mode = "wb")
}

if(!file.exists("household_power_consumption.txt")){
        unzip(filename)
}

data <- read.table("./household_power_consumption.txt", 
                   header = TRUE, 
                   sep = ";" ,
                   colClasses = c("character", "character", rep("numeric", 7)),
                   na = "?"
                   )

sampledata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]




