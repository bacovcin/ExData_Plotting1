data<-dget("subset.txt") #Load the preprocessed data

png(filename = "plot4.png",
    width=480,height=480)
par(mfrow=c(2,2))
# Plot 1
plot(data$Time,data$Global_active_power,
     type='l',
     main="",
     xlab="",
     ylab="Global Active Power")
# Plot 2
plot(data$Time,data$Voltage,
     type='l',
     main="",
     xlab="datetime",
     ylab="Voltage")
# Plot 3
plot(data$Time,data$Sub_metering_1,
     type='l',
     main="",
     xlab="",
     ylab="Energy sub metering")
lines(data$Time,data$Sub_metering_2,
      col="red")
lines(data$Time,data$Sub_metering_3,
      col="blue")
legend(x="topright",
       legend=c('Sub_metering_1',
                'Sub_metering_2',
                'Sub_metering_3'),
       col=c('black','red','blue'),
       lty=c(1,1,1),
       cex=.97,
       bty="n")
# Plot 4
plot(data$Time,data$Global_reactive_power,
     type='l',
     main="",
     xlab="datetime",
     ylab="Global_reactive_power")
dev.off()