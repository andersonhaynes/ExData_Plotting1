hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors =FALSE) 
#read data into R
hpsub <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007"),]
#extract required time period

day <- as.character(as.Date(subset$Date, "%d/%m/%Y"))
x <- paste(day, subset$Time)
time <- strptime(x, "%Y-%m-%d %H:%M:%S")

png("plot2.png", width = 480, height = 480)
plot(time, as.numeric(subset$Global_active_power), type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()

