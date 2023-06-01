# KMVA
# 25/05/2023


# Importar datos ----------------------------------------------------------------------
setwd("C:/Repositorio Gif/D-experimental/SCIPS/")
Germ <- read.csv("Germinacion.Csv", header = T)
Germ$Trat <- as.factor(Germ$Trat)


# Grafica ----------------------------------------------------------------------------

boxplot(Germ$PG ~ Germ$Trat,
        col="PINK",
        xlab = "Tratamientos Germinativos",
        ylab = "% Germinacion")
# ordenar tratamientos
levels(Germ$Trat)
levels(Germ$Trat)
boxplot(Germ$PG ~ Germ$Trat,
        col="PINK")
# funcion tapply
tapply(Germ$PG, Germ$Trat, mean)
tapply(Germ$PG, Germ$Trat, var)

# ANOVA -----------------------------------------------------------------------------



Germ.oav <- aov(Germ$PG ~ Germ$Trat)
summary(Germ.oav)


# prueba de Tuckey ------------------------------------------------------------------

TukeyHSD(Germ.oav, conf.level = 0.95)

plot(TukeyHSD(Germ.oav), las =1, col="red")

boxplot(Germ$PG ~ Germ$Trat,
        col="PINK",
        xlab = "Tratamientos Germinativos",
        ylab = "% Germinacion",
        ylim=c(0,10))
text(1,4.3, "a", col="red")
text(2, 8.3, "b", col="blue")
text(3, 9.3, "b", col="blue")
text(4, 7.3, "b", col="blue")
text(5, 3.3, "a", col="red")
getwd()

