
bdiris <- iris
head(bdiris)
bdiris <- bdiris[,c(1,2)]

layout(matrix(c(1,2,3,4, 5, 5), 3, 2, byrow = T))
MAT <- matrix(c(1, 2, 3, 4,5, 5), 3, 2, byrow = T)
layout(MAT)#Recibe una matriz y el dispositivo gr{afico lo partticiona como la matriz}. Cuando los n{umerops se repiten se crean un solo grafico de ese tipo.
#layout.show me muestra la cantidad de graficos.

layout.show(5)
plot(bdiris)
plot(bdiris)
plot(bdiris)
plot(bdiris, "blue")
plot(bdiris, col="red")

1, 2, 3, 4, 5, 5
##
1 2
3 4
5 5 #Se unen los gr'aficos.

# Crear un grafico y los alrededores crear otros graficos