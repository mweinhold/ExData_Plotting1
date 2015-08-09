source("readfile.R")
png("plot1.png")#width and height are 480 by default
hist(power.sub$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="Red",ylim=c(0,1200))

dev.off()