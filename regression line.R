df1 <- c(0,2,4,6,8) 
df2 <- c(8,20,52,64,96)

plot(df1,df2, xlab = "Hours of Sleep", ylab = "Exam score", main = "Corellation between sleep duration and exam scores")


lm(df1~df2)


cor(df1,df2, method = "pearson")
abline(lm(df1 ~ df2))
abline(-0.25806, 0.08871 )

#abline(-0.05979, 0.997844)




