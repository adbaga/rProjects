library(quantmod)
mdate <- Sys.Date()
amazonSt <- getSymbols("AMZN", from = "2019-8-8", to = mdate, auto.assign = F, src = "google")[,4]
print(amazonSt)

#rate of change
amazonROC <- ROC(amazonSt, type = "discrete")
print(amazonROC)

