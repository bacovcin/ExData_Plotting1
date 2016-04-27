data<-dget("subset.txt") #Load the preprocessed data

png(filename = "plot2.png",
    width=480,height=480)
plot(data$Time,data$Global_active_power,
     type='l',
     main="",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()