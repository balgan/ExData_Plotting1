df_power <- read.csv("e://Coursera//household_power_consumption.txt",header = TRUE,stringsAsFactors=FALSE,sep=';',dec=".")
df_power2  <- df_power[df_power$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(df_power2$Date, df_power2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(df_power2$Global_active_power)


subMeter1 <- as.numeric(df_power2$Sub_metering_1)
subMeter2 <- as.numeric(df_power2$Sub_metering_2)
subMeter3 <- as.numeric(df_power2$Sub_metering_3)

voltage <- as.numeric(df_power2$Voltage)
globalReactivePower <- as.numeric(df_power2$Global_reactive_power)

png("E://Coursera//plot4.png", width=480, height=480)

par(mfrow = c(2, 2)) 

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()