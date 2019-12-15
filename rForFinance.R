library(quantmod)

df1 <- data.frame(getSymbols("AAPL", auto.assign = 0))
df1

head(df1)
tail(df1)

AAPL <- tail(df1)
AAPL

#to filter
#[begin:end, begin:end] row, column
AAPL[1:4, 1:3] #row 1-4, column 1-3
AAPL[,1:5] #all row column 1 - 5
AAPL[1:4,] #row 1-4, all column
AAPL[, c(1,4)] #all rows but only column 1 and 4


AAPL["2019-12-05",]

class(colnames(AAPL))
class(AAPL)


AAPL[,1]
AAPL[1,]
class(AAPL[1,]) #dataframe
class(AAPL[,1]) #numeric
colnames(AAPL) <-  c("Open", "High", "Low", "Close", "Volume", "Adjusted")
AAPL
AAPL["Open"]

#ctrl + L clear console
OpenCloseDF<-AAPL[,c("Open","Close")]
OpenCloseDF


AAPL <- df1
AAPL


colnames(AAPL) <- c("Open", "High", "Low", "Close", "Volume", "Adjusted")
head(AAPL)


write.csv(AAPL, "AAPL2.csv")
read.csv("AAPL2.csv")

data <- AAPL
data[,"Close"] #cl is for close from quantmod

plot(Cl(AAPL), type = "line")
plot(Ad(AAPL), type = "l") #ad is adjusted from quantmod
length(Ad(AAPL))

100*((Ad(AAPL)[3257] - Ad(AAPL)[1])/Ad(AAPL)[1]) #count how many percent has the stock increased
     


Ad(AAPL)[3257]
Ad(AAPL)[1]


class(data)
data<-AAPL
     




