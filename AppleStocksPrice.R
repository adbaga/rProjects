library(quantmod)

df1 <- data.frame(getSymbols("AAPL", auto.assign = 0))

AAPL <- tail(df1)
colnames(AAPL) <-  c("Open", "High", "Low", "Close", "Volume", "Adjusted")


#ctrl + L clear console

AAPL <- df1



colnames(AAPL) <- c("Open", "High", "Low", "Close", "Volume", "Adjusted")
head(AAPL)


write.csv(AAPL, "AAPL2.csv")
read.csv("AAPL2.csv")

data <- AAPL
plot(Ad(AAPL), type = "l", xlab ="Index", ylab = "Adjusted Value", main = "Apple's Stock Price", col.main = "blue", font.lab=8) #ad is adjusted from quantmod
length(Ad(AAPL))

100*((Ad(AAPL)[3257] - Ad(AAPL)[1])/Ad(AAPL)[1]) #count how many percent has the stock increased



Ad(AAPL)[3257]
Ad(AAPL)[1]


class(data)
data<-AAPL





