source("Clear.R")
#
# Plot 02
#
par(bg="transparent")
plot(dsClear$DateTime, dsClear$Global_active_power,xlab="",ylab="Global Active Power (Kilowatts)", type="n")
lines(dsClear$DateTime, dsClear$Global_active_power)
dev.copy(png, file="plot2.png")
dev.off()