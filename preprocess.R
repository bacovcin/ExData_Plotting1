data <- read.table(unz("exdata-data-household_power_consumption.zip","household_power_consumption.txt"),
                   sep=';',colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'),
                   comment.char = "", header = T,na.strings='?')

data$Date <- as.Date(data$Date,format="%d/%m/%Y")
tmp<-paste(data$Date,data$Time,sep=';')
data$Time <- strptime(tmp,format="%Y-%m-%d;%H:%M:%S")

real<-subset(data,Date %in% as.Date(c('2007-2-1','2007-2-2')))
dput(real,file="subset.txt")
