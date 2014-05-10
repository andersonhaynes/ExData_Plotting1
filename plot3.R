hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors =FALSE) #read data into R
hpsub <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007"),]#extract required time period

day <- as.character(as.Date(subset$Date, "%d/%m/%Y"))
x <- paste(day, subset$Time)
time <- strptime(x, "%Y-%m-%d %H:%M:%S")

png("plot3.png", width = 480, height = 480)
plot(time, as.numeric(subset$Sub_metering_1), type="l",
     ylab="Energy Submetering", xlab="")
lines(time, as.numeric(subset$Sub_metering_2), type="l", col="red")
lines(time, as.numeric(subset$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd =2.5,
       col=c("black", "red", "blue"))
dev.off()
