data<-dget("subset.txt") #Load the preprocessed data

png(filename = "plot1.png",
    width=480,height=480)
hist(data$Global_active_power,col="red",
     ylim=c(0,1200),
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()