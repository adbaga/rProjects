
library(xlsx)
library(readxl)
library(ggplot2)
library(ggcorrplot)
library(MLmetrics)
sat <- read_excel("/Users/kalevkim/statRProgramming/Data/sat.xls")
View(sat)


cor(sat$univ_GPA, sat$comp_GPA)

#make a plot
plot(sat$comp_GPA, sat$univ_GPA, xlab = "Comp_GPA", ylab = "Univ_GPA", main = "Corellation between Comp GPA and Univ GPA")
pearson<-cor(sat$univ_GPA, sat$comp_GPA)
head(pearson)
linear.model<-lm(sat$univ_GPA~sat$comp_GPA)
abline(linear.model)
cor(sat$univ_GPA,sat$comp_GPA)

library(MLmetrics)
prediction.linear <- predict (linear.model, sat)
paste0("linear model: ",
       MAPE(prediction.linear,sat$univ_GPA))

library(e1071)
svm.model<-svm(sat$univ_GPA ~ sat$comp_GPA, data = sat)
prediction.svm <- predict(svm.model, sat$comp_GPA)
paste0("svm model: ",
       MAPE(prediction.svm,sat$univ_GPA))


#corellation value
cor(sat$univ_GPA, sat$comp_GPA)
round(cor(sat$univ_GPA, sat$comp_GPA),2)
cormat <- round(cor(sat$univ_GPA, sat$comp_GPA),2)



#heatmap cormat
library(reshape2)
library(reshape)
melted_cormat <- melt(cormat)
head(melted_cormat)

#ggplot(data = melted_cormat, aes(x=sat$comp_GPA, y=sat$univ_GPA, fill=value)) + geom_tile()

plot( sat$comp_GPA,sat$univ_GPA, xlab="univ_GPA", ylab="comp_GPA", pch=21)
points (sat$comp_GPA,
        prediction.linear,
        col = "blue",
        pch = 16)
points(sat$comp_GPA,
       prediction.svm,
       col = "red",
       pch = 16)

