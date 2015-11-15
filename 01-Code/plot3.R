source("Clear.R")
#
# Plot 03
#
par(bg="transparent")

plot(dsClear$DateTime, dsClear$Sub_metering_1, xlab="",ylab="Energy sub metering", type="n")

lines(dsClear$DateTime, dsClear$Sub_metering_1, col="black")
lines(dsClear$DateTime, dsClear$Sub_metering_2, col="red")
lines(dsClear$DateTime, dsClear$Sub_metering_3, col="blue")

legend("topright", col=c("black", "red", "blue"),legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1))

dev.copy(png, file="plot3.png")
dev.off()