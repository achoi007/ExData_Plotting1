source("common.r")

plot(data$DateTime, data$Global_active_power, type="l",
     xlab="", ylab="Global Active Power (kilowatts)")

write_plot("plot2")