data<-dget("subset.txt") #Load the preprocessed data

png(filename = "plot3.png",
    width=480,height=480)
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
       xjust=1)
dev.off()