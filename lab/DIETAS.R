# KMVA
# Anova 
# 18/05/2023

# Experimento Ganancia en Peso (GP) basado en Diferentes Dietas 
# niveles de Factor: 4 (die1, die2, die3, die4)

die1 <- c(2.4, 2.2, 3.4, 1.6)
die2 <- c(2.2, 1.9, 1.7, 2.1)
die3 <- c(3.3, 1.3, 2.8, 2.1)
die4 <- c(1.6, 2.5, 1.4, 2.4)

GP <- c(2.4, 2.2, 3.4, 1.6, 2.2, 1.9, 1.7, 2.1, 
        3.3, 1.3, 2.8, 2.1, 1.6, 2.5, 1.4, 2.4)
Trat <- gl(4,4,16, labels = c("die1", "die2", "die3", "die4"))
bloq <- gl(4,4,16, labels = c("bajo", "normal", "Sp", "OB"))

Dietas <- data.frame(Trat, GP)

boxplot(Dietas$GP ~ Dietas$Trat, col= "purple",
        xlab = "Dietas",
        ylab = "Ganancia en peso (kg)")


tapply(Dietas$GP, Dietas$Trat, var)

fligner.test(Dietas$GP, Dietas$Trat)
bartlett.test(Dietas$GP, Dietas$Trat)

diet.aov <- aov(Dietas$GP ~ Dietas$Trat)
summary(diet.aov)

write.table(Dietas, "C:/Repositorio Gif/D-experimental/SCIPS/Dietas.csv",
            sep = ",")

