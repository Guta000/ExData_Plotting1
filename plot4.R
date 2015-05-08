source("readData.R")
source("plots.R")

par(mfcol=c(2,2), ps = 12)

#subplot 1
plot2()

#subplot 2
plot3()

#subplot 3
with(data, plot(DateTime, Voltage, type="n", xlab = "datetime", ylab = "Voltage"))
with(data, lines(DateTime, Voltage))

#subplot 4
with(data, plot(DateTime, Global_reactive_power, type="n", xlab = "datetime"))
with(data, lines(DateTime, Global_reactive_power))

#save to the file
dev.copy(png, "plot4.png")
dev.off()
