help(mtcars)
head(mtcars)
library(ggplot2)

#colMeans(mtcars)


cyl <- mtcars$cyl
mpg <- mtcars$mpg
disp <- mtcars$disp
hp <- mtcars$hp
wt <- mtcars$wt
qsec <- mtcars$qsec
vs <- mtcars$vs
am <- mtcars$am
gear <- mtcars$gear
carb <- mtcars$carb

print("Made by build in function")

#by function
print(mean(hp))
#print(mode(cyl))
print(median(hp))
print(sd(hp))

print("-----------")




meanHpForm <- sum(hp)/length(hp)
print(meanHpForm)

median.func <- function(arg){
  arg.sorted <- sort(arg) #sorting by cylinder size
  l<-length(arg.sorted)
  r<-(arg.sorted[floor(1/2) + arg.sorted[ceiling(1/2)]])/2
}

medianByForm <- median.func(hp)

hist(hp, xlab = "Horse power")
boxplot(hp)

#install.packages(c("psych"))

summary(mtcars)
library(psych)
describe(mtcars)

var.x = mtcars$mpg
var.y = mtcars$hp
plot(var.x, var.y, ylab = "MPG", xlab = "HP", main = "MPG vs HP")
text(var.x, var.y, labels = rownames(mtcars) )
#ggplot(mapping = aes(x=mpg, y = hp))




#sdCyl <- sum(sqrt(cyl - mean(cyl)))/length(cyl)
#print(sdCyl)

