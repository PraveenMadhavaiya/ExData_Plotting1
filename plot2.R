data <- read.delim(file = "household_power_consumption.txt", header = TRUE, sep = ";",  stringsAsFactors=FALSE)
data_sel <- data[as.Date(data$Date, "%d/%m/%Y") %in% as.Date(c('2007-02-01', '2007-02-02')),]
data_sel$Date <- strptime(paste(data_sel$Date, data_sel$Time, sep="T"), format = "%d/%m/%YT%T")
png(file = "plot2.png") 
with(data_sel, {
     plot(Date, Global_active_power,  type = "l", ylab = "Global Active Power (kilowatts)", xlab = " ")
     })    
dev.off() 
## Close the PDF file device
