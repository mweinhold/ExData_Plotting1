source("readfile.R")
png("plot4.png")
par(mfrow=c(2,2))
plot(power.sub$datetime,power.sub$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

plot(power.sub$datetime,power.sub$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(power.sub$datetime,power.sub$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(power.sub$datetime,power.sub$Sub_metering_2,col="Red")
lines(power.sub$datetime,power.sub$Sub_metering_3,col="Blue")
legend("topright",c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty="solid",col=c("black","red","blue"))

plot(power.sub$datetime,power.sub$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()