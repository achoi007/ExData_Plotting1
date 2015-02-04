source("common.r")

# Font size is half as big
par(cex=0.5)

hist(data$Global_active_power,
     col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")

write_plot("plot1")
