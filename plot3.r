source("common.r")

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

write_plot("plot3")

