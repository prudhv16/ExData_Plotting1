data <- read.table("household_power_consumption.txt",sep = ";",header=TRUE,stringsAsFactors = TRUE,na.strings = '?')
data <- subset(data,Date=="1/2/2007" | Date == "2/2/2007")
data$Date <- strptime(paste(data$Date,data$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
with(data,plot(Date,Global_active_power,type="l",xlab="",
               ylab="Global active power (kilowatts)"))
dev.copy(png,"plot2.png",width=480,height=480)
dev.off()