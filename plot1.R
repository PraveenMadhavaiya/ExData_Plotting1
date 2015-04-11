library(sqldf)
data <- read.csv.sql(file = "household_power_consumption.txt", header = TRUE, sep = ";")
data_sel <- data[as.Date(data$Date, "%d/%m/%Y") %in% as.Date(c('2007-02-01', '2007-02-02')),]
png(file = "plot1.png") 
with(data_sel, hist(Global_active_power, xlab ="Global Active Power (kilowatts)",
                    main = "Global Active Power", col="red"))    
dev.off() 

