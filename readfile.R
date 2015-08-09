if (!file.exists("power.Rdata")){
  powercons<-read.table('household_power_consumption.txt', header=TRUE,
           sep=';', na.strings='?')# not neeeded: colClasses=c(rep('character', 2),rep('numeric',7)))
  powercons$datetime<-strptime(paste(powercons$Date,powercons$Time),"%d/%m/%Y %H:%M:%S")
  powercons$Date<-NULL
  powercons$Time<-NULL
  power.sub<-subset(powercons,datetime$year==107 & datetime$mon==1 & (datetime$mday==1 | datetime$mday==2))
  remove(powercons)
  save(power.sub,file="power.Rdata")
}else{load("power.Rdata")} 
  


