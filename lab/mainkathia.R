# t-test dependientes-----------------------------------------------------------

semilla <- read.csv("SCIPS/mainproduccion.csv", header = T)
semilla$tiempo <- as.factor(semilla$Tiempo)


# Grafica boxpot

boxplot(semilla$tiempo, semilla$Kgsem)
boxplot(semilla$BioRama, semilla$tiempo)
boxplot(semilla$Kgsem)


t.test(semilla$Kgsem ~ semilla$tiempo, Paired = TRUE)

t.test(semilla$Germ ~ semilla$tiempo, paired = T)

t.test(semilla$BioRama ~ semilla$tiempo, paired=T)
