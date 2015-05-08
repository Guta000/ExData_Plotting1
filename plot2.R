source("readData.R")
source("plots.R")

plot2()

#save to the file
dev.copy(png, "plot2.png")
dev.off()
