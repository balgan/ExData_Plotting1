df_power <- read.csv("e://Coursera//household_power_consumption.txt",header = TRUE,sep=';')
df_power2  <- df_power[df_power$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(df_power2$Global_active_power)
png("E:/Coursera/plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
