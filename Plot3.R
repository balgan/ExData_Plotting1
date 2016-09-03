df_power <- read.csv("e://Coursera//household_power_consumption.txt",header = TRUE,stringsAsFactors=FALSEsep=';',dec=".")
df_power2  <- df_power[df_power$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(df_power2$Date, df_power2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(df_power2$Global_active_power)


subMeter1 <- as.numeric(df_power2$Sub_metering_1)
subMeter2 <- as.numeric(df_power2$Sub_metering_2)
subMeter3 <- as.numeric(df_power2$Sub_metering_3)



png("E:/Coursera/plot3.png", width=480, height=480)
plot(datetime, subMeter1, type="l", xlab="", ylab="Energy Submetering")
lines(datetime,subMeter2, type="l" ,col="red")
lines(datetime,subMeter3, type="l" ,col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=2.5,lty=1, col=c("black", "red", "blue"))
dev.off()

