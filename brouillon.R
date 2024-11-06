data(CO2)
d = CO2[CO2$Type=="Quebec", ]

attach(d)

m1 <- lm(uptake ~ conc) 
m2 <- lm(uptake ~ log10(conc))

s1 <- summary(m1)
s2 <- summary(m2)

layout(matrix(1:2, 1), respect=TRUE)
plot(conc, uptake, main = paste0("m1 : R^2 = ", signif(s1$r.squared *100, 2), "%"))
abline(m1, col = "coral", lwd = 2)
plot(log10(conc), uptake, main = paste0("m2 : R^2 = ", signif(s2$r.squared *100, 2), "%"))
abline(m2, col = "coral", lwd = 2)






