source("readData.R")
source("plots.R")

plot3()

#save to the file
dev.copy(png, "plot3.png")
dev.off()
