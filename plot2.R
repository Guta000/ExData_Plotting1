source("readData.R")
source("plots.R")

plot2()

# !!! using Russian Windows, so weekdays labels are in Russian and it's not mistake

#save to the file
dev.copy(png, "plot2.png")
dev.off()
