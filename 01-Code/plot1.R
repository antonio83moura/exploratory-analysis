source("Clear.R")
#
# Plot 01
#
par(bg="transparent")
hist(dsClear$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (Kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()