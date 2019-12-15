#survey about survey

df2 <- read.csv("Data/Survey.csv")
View(df2)

caseII <- df2["SurveyNoTreat"]
class(caseII)
View(caseII)

matCaseII <- as.matrix(caseII) #convert df to matrix
class(matCaseII)

vecCaseII <- sort(as.vector(matCaseII)) #convert matrix to vector
class(vecCaseII)
mean(vecCaseII)
median(vecCaseII)
mode(vecCaseII)
sd(vecCaseII)
print(vecCaseII)

library(ggplot2)

#ggplot(data=df2, aes(x = Year, y = Time) + geom_line(aes(colour=Gender)))

