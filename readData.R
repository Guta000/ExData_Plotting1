wd = "C:/Users/Nip/Documents/GitHub/ExData_Plotting1"
setwd(wd)

fileName = "tmp.zip"
csvFile = "household_power_consumption.txt"

#download the file
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile = fileName) 
unzip(fileName)

# read all file
allData = read.csv2(csvFile, header = TRUE, stringsAsFactors = FALSE)

#get required subset
data = subset(allData, allData$Date == "1/2/2007" | allData$Date == "2/2/2007")

#prepare all data formats
data$DateTime = as.POSIXlt(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data$Global_active_power = as.numeric(data$Global_active_power)
data$Global_reactive_power= as.numeric(data$Global_reactive_power)
data$Sub_metering_1 = as.numeric(data$Sub_metering_1)
data$Sub_metering_2 = as.numeric(data$Sub_metering_2)
data$Sub_metering_3 = as.numeric(data$Sub_metering_3)
data$Voltage = as.numeric(data$Voltage)
