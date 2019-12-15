library(readr)
library(ggplot2)

marathon <- read.csv("marathon-1.csv")

View(marathon)

marathon.woman<-marathon [marathon$Gender=="f",]
marathon.man<- marathon [marathon$Gender=="m",]

View(marathon.woman)
View(marathon.man)

plot(marathon.woman[,c('Year','Time')])
# adding lines to plot
lines(marathon.woman[,c('Year','Time')])
# you will see it is not sorted

#sorting by year
marathon.woman<-marathon.woman[order(marathon.woman$Year),]

#plot(marathon.woman$Year,marathon.woman$Time)
plot(marathon.woman[,c('Year','Time')])
# both of ways are ok
lines(marathon.woman[,c('Year','Time')])
title(main = "Woman marathon")

# drawing the data and specifying line color by gender
ggplot(data =marathon, aes(x=Year, y=Time)) + geom_line(aes(colour=Gender))



