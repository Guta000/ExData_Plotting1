source("readData.R")
source("plots.R")

plot3()

# !!! using Russian Windows, so weekdays labels are in Russian and it's not mistake

#save to the file
dev.copy(png, "plot3.png")
dev.off()
