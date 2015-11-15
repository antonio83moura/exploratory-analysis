source("Clear.R")
#
# Plot 04
#

par(mfrow = c(2, 2), bg="white", cex=.8, cex.axis = .8)
# Top left plot
plot(dsClear$DateTime, dsClear$Global_active_power, xlab="",ylab="Global Active Power", pch='.')
lines(dsClear$DateTime, dsClear$Global_active_power)

# Top right plot
plot(dsClear$DateTime, dsClear$Voltage, xlab="datetime",ylab="Voltage", pch='.')
lines(dsClear$DateTime, dsClear$Voltage)

# Bottom left plot
plot(dsClear$DateTime, dsClear$Sub_metering_1, xlab="",ylab="Energy sub metering", type="n")

lines(dsClear$DateTime, dsClear$Sub_metering_1, col="black")
lines(dsClear$DateTime, dsClear$Sub_metering_2, col="red")
lines(dsClear$DateTime, dsClear$Sub_metering_3, col="blue")

legend("topright", col=c("black", "red", "blue"),legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1), bty="n", cex=.8, inset=.1)

# Bottom right plot
plot(dsClear$DateTime, dsClear$Global_reactive_power,xlab="datetime", ylab="Global_reactive_power", pch='.')
lines(dsClear$DateTime, dsClear$Global_reactive_power)


dev.copy(png, file="plot4.png")
dev.off()