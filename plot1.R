source("readData.R")

hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")

#save to the file
dev.copy(png, "plot1.png")
dev.off()
