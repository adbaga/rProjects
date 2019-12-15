library(readr)
library(ggplot2)

myData <- read.csv("/Users/kalevkim/statRProgramming/Data/marathon-1.csv")

View(myData)

marathon.woman <- myData [myData$Gender=="f",]
marathon.woman <- myData [order(marathon.woman$Year),]

View(marathon.woman)

#p1 <- ggplot() +
#  geom_line(aes(y = Time, x = Year), data = myData)


#p1 + labs(title = "Marathon", x = "Year", y = "Time")

ggplot(data =myData, aes(x = Year, y = Time) + geom_line(aes(colour=Gender)))



