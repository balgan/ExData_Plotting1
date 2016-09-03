df_power <- read.csv("e://Coursera//household_power_consumption.txt",header = TRUE,sep=';')
df_power2  <- df_power[df_power$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(df_power2$Date, df_power2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
datetime
globalActivePower <- as.numeric(df_power2$Global_active_power)
png("E:/Coursera/plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
