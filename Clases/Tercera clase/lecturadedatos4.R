setwd("C:/Users/Usuario.Usuariopc.002/Desktop/Tercera clase")
bd4 <- read.table("basedatos4.txt",
                  header = TRUE,
                  sep = ";",
                  dec = ",")
bd4
# En R los decimales son con . 
# Dentro de R no puyede haber n{umero con ,, sería texto.}
# Después de cada coma, podemos dar enter