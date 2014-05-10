hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors =FALSE) 
#read data into R

hpsub <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007"),]#extract required time period

png("plot1.png", width = 480, height = 480) # create plot and store to png file
hist(as.numeric(subset$Global_active_power), col="red", 
     main = "Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
