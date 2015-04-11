data <- read.delim(file = "household_power_consumption.txt", header = TRUE, sep = ";",  stringsAsFactors=FALSE)
data_sel <- data[as.Date(data$Date, "%d/%m/%Y") %in% as.Date(c('2007-02-01', '2007-02-02')),]
data_sel$Date <- strptime(paste(data_sel$Date, data_sel$Time, sep="T"), format = "%d/%m/%YT%T")
png(file = "plot3.png") 
with(data_sel, {
     plot(Date, Sub_metering_1,  type = "n", ylab="Energy sub metering", xlab = "")
     lines(Date, Sub_metering_1, type = "l", col = "black")
     lines(Date, Sub_metering_2, type = "l", col = "blue")
     lines(Date, Sub_metering_3, type = "l", col = "red")
     legend("topright", lty = 1, col = c("black", "red", "blue"), 
            legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
     ##xlab = " ", ylab = "Energy sub metering"
     })    
dev.off() 
## Close the PDF file device
