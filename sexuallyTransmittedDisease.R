
library(xlsx)
library(readxl)
library(ggplot2)
library(ggcorrplot)
library(MLmetrics)
#test
pubHealth <- read_excel("/Users/kalevkim/statRProgramming/Data/pubHealth.xlsx")
View(pubHealth)

hivRate <- pubHealth [pubHealth$`STI Test Type` == "HIV"]
hivRate <- pubHealth [order(hivRate$`Fiscal Years (FY)*`)]
View(hivRate)

pubHealthCSV <- read.csv(file = "/Users/kalevkim/statRProgramming/Data/pubHealth.csv", header = TRUE )
hivRateCSV <- pubHealthCSV [pubHealthCSV$STI.Test.Type == "HIV"]
hivRateCSV <- pubHealthCSV [order(hivRateCSV$Fiscal.Years..FY..),]
View(hivRateCSV)
View(pubHealthCSV)



hivRate <- pubHealthData [pubHealthData$"Fiscal Years (FY)*" >= 2005 ,check.names=FALSE]
View(hivRate)

class(hivRate)
#View(pubHealthData)

