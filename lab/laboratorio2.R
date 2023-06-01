# laboratorio 2
# kathia
# matricula


. # importar BD excel

# utilizar la funcion read.csv

vivero <- read.csv("SCIPS/2.csv" , header = TRUE)

# convertir trataminento a factor

vivero$Tratamiento <- as.factor(vivero$Tratamiento)

suMmary(vivero)

mean(vivero$IE)
sd(vivero$IE)
var(vivero$IE)
mean(vivero)


#importar datos de dropbox
prof_url <- "http://www.profepa.gob.mx./innovaportal/file/7635/1/accionesInspeccionoanp.csv"
profepa





