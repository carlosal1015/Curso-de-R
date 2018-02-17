setwd("C:/Users/Usuario.Usuariopc.002/Desktop/Tercera clase")
bd2 <- read.table("basedatos2.txt", header = TRUE, sep = ";") # El orden a veces puede importar.
bd2
# Es un marco de datos, porque no aparace corchetes.
dim(bd2)