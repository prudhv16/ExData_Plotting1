data <- read.table("household_power_consumption.txt",sep = ";",header=TRUE,stringsAsFactors = TRUE,na.strings = '?')
data <- subset(data,Date=="1/2/2007" | Date == "2/2/2007")
data$Date <- strptime(paste(data$Date,data$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
with(data,plot(Date,Sub_metering_1,type="l",xlab="",
               ylab="Energy sub metering"))
with(data,lines(Date,Sub_metering_2,type="l",col="red"))
with(data,lines(Date,Sub_metering_3,type="l",col="blue"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),lty=1)
dev.copy(png,"plot3.png",width=480,height=480)
dev.off()