help(iris)


X <- iris[iris$Species == "virginica", 1]
EX <- sum(X) / length(X)
paste0("mean: ", EX, " vs ", mean(X))

d<-  sapply(X,  FUN = function(val)  val - EX)

for(i in length(X)){
  abs(D <- X - EX)
  
}

Ed <- sum(d)/length(X)


D<- sapply(X,  FUN = function(val)  abs(val - EX))
ED<-sum(D)/length(X)  


#Plot
plot(X)
abline(a = EX, b = 0)
abline(a = EX + ED, b = 0)
abline(a = EX - ED, b = 0)



#Quartile
q1 <- Quantile.func(X, 1)
q2 <- Quantile.func(X, 2)
q3 <- Quantile.func(X, 1)

paste0("Q1=",q1," Q2=",q2," Q3=",q3)
quantile(X)
