height <- c(176, 154, 138, 196, 132, 176, 181, 169, 150, 175)
bodymass <- c(82, 49, 53, 112, 47, 69, 77, 71, 62, 78)
plot(bodymass, height)
cor(height,bodymass, method = "pearson")
lm(height ~ bodymass)
abline(98.0054,0.9528)

t.test(height)