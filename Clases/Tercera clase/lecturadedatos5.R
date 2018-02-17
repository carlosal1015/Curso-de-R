setwd("C:/Users/Usuario.Usuariopc.002/Desktop/Tercera clase")
bd5 <- read.table("basedatos5.txt",
                  header = TRUE,
                  sep = ";",
                  dec = ",",
                  colClasses = c("numeric","character"))#Interesante
bd5
# Puede leer sav de spss, txt, xls, stat, de access, puede hacer conexiónh a base da datos como las de Oracle