source("readfile.R")
png("plot2.png")
plot(power.sub$datetime,power.sub$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()