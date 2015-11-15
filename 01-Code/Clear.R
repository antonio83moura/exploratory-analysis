#
# Clear.R
#

library(data.table)
# URL
https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

urlFile <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dst <- "/home/henrique/NZ/Exploratory Data Analysis/Course Project 1"
fldrDataSet <- "00-DataSet"
fldrCode  <- "01-Code"
fileZip   <- "xdata%2Fdata%2Fhousehold_power_consumption.zip"
setwd(dir = dst )
dstDownload <-paste(dst,fldrDataSet,fileZip,sep = "/")

#download.file(url = urlFile, destfile = dstDownload, method = 'curl')
unzip(dstDownload,exdir = paste(dst,fldrDataSet,sep = "/"))
fileTxt <- paste(dst,fldrDataSet,"household_power_consumption.txt",sep = "/");


#ds <- read.table(file = fileTxt, sep = ";", header = TRUE, na.strings = '?')

ds <- fread(fileTxt, na.strings="?")

dsClear <- ds[ds$Date=='1/2/2007'|ds$Date=='2/2/2007',]
rm(ds)
dsClear$DateTime <- as.POSIXct(paste(as.Date(dsClear$Date,"%d/%m/%Y"), dsClear$Time), format="%Y-%m-%d %H:%M:%S")

# Convert remaining columns to correct type
# dsClear$Global_active_power <- as.numeric(dsClear$Global_active_power)
# dsClear$Global_reactive_power <- as.numeric(dsClear$Global_reactive_power)
# dsClear$Voltage <- as.numeric(dsClear$Voltage)
# dsClear$Global_intensity <- as.numeric(dsClear$Global_intensity)
# dsClear$Sub_metering_1 <- as.numeric(dsClear$Sub_metering_1)
# dsClear$Sub_metering_2 <- as.numeric(dsClear$Sub_metering_2)
# dsClear$Sub_metering_3 <- as.numeric(dsClear$Sub_metering_3)
