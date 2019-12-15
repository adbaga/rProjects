library(readxl)
sat <- read_excel("Data/sat.xls")
View(sat)


# Correlation matrix
library(ggcorrplot)
cor(sat)
cormat <- round(cor(sat),2)
p.mat <- cor_pmat(sat)
ggcorrplot(cormat,outline.col = "white",  hc.order = TRUE,type = "full",lab = TRUE,p.mat = p.mat)

# univ_GPA vs. comp_GPA
plot(sat$comp_GPA,sat$univ_GPA,  xlab="comp_GPA", ylab="univ_GPA", pch=21)
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

plot( sat$comp_GPA,sat$univ_GPA, xlab="univ_GPA", ylab="comp_GPA", pch=21)
points (sat$comp_GPA,
        prediction.linear,
        col = "blue",
        pch = 16)
points(sat$comp_GPA,
       prediction.svm,
       col = "red",
       pch = 16)

