x <- c(13.0, 14.0, 14.5, 15.5, 14.5, 15.0, 13.0, 15.7)

res = t.test(x, mu = 15.2, alternative = "less")

print(res)