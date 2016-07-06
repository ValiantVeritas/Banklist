library(plyr, ggplot2)

banklist <- read.csv(file = "data/banklist.csv", header = TRUE, sep = ",")
freqlist= count(banklist, "City")
topten = tail(freqlist[order(freqlist$freq), ], 10)
banks = subset(banklist, City %in% topten$City)