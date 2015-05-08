plot2 = function(){
        with(data, plot(DateTime, Global_active_power, type="n", xlab = "", ylab = "Global Active Power(kilowatts)"))
        with(data, lines(DateTime, Global_active_power))
}

plot3 = function(){
        
        with(data, plot(DateTime, Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering"))
        with(data, lines(DateTime, Sub_metering_1))
        with(data, lines(DateTime, Sub_metering_2, col = "red"))
        with(data, lines(DateTime, Sub_metering_3, col = "blue"))
        
        legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, col = c("black","red","blue"))
}