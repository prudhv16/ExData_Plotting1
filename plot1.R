data <- read.table("household_power_consumption.txt",sep = ";",header=TRUE,stringsAsFactors = TRUE,na.strings = '?')
data <- subset(data,Date=="1/2/2007" | Date == "2/2/2007")
with(data,hist(Global_active_power,main="Global Active Power",
               col="red",xlab="Global active power (kilowatts)"))
dev.copy(png,"plot1.png",width=480,height=480)
dev.off()