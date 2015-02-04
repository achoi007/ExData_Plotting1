source("common.r")

# 2x2 column-major
par(mfcol=c(2, 2))

par(cex=0.5)

# Graph 1
plot(data$DateTime, data$Global_active_power, type="l",
     xlab="", ylab="Global Active Power (kilowatts)")

# Graph 2
plot(data$DateTime, data$Sub_metering_1, type="n", xlab="",
     ylab="Energy sub metering")

lines(data$DateTime, data$Sub_metering_1, type="l", col="black")

lines(data$DateTime, data$Sub_metering_2, type="l", col="red")

lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")

legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
       col=c("black", "red", "blue"),
       lty=c(1,1,1), lwd=c(1.5,1.5,1.5),
       cex=0.5)

# Graph 3
plot(data$DateTime, data$Voltage, 
     type="l", 
     xlab="datetime", ylab="Voltage")

# Graph 4
plot(data$DateTime, data$Global_reactive_power, 
     type="l", 
     xlab="datetime", ylab="Global_reactive_power")

# Write out png
write_plot("plot4")
