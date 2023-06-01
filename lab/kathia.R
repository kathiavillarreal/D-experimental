plantulas <- read.csv("Vivero.csv",header =T)
plantulas$Tratamiento <- as.factor(plantulas$Tratamiento)


shapiro.test(plantulas$IE)

bartlett.test(plantulas$IE ~ plantulas$Tratamiento)




# t-test-indep ------------------------------------------------------------
t.test(plantulas$IE ~ plantulas$Tratamiento, var.equal=T)

# t-test-one sample -------------------------------------------------------
mean(plantulas$IE)
t.test(plantulas$IE, mu = 0.90)

# t-test-one sample -------------------------------------------------------
mean(plantulas$IE)
t.test(plantulas$IE, mu = 0.85)
