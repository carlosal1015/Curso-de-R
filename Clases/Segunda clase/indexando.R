x <- matrix(1:36, nrow = 6, ncol = 6); x
x[6,6]# alt +91 y alt + 93 para escribir corchetes.
x[6,] #fila 6
x[,6] # columna 6

#Observar
i <- matrix(c(1,1,2,2,3,3,4,4,5,5,6,6),6,2,byrow = T);i#No puedo usar 7, 7.
x[i] # He usado una matriz para llamar a otra matriz, es más preciso y complejo.
i
#Vamos a ver la indexación, llamando desde una matriz.

# i es una matriz y x es también es una matriz.

#Cubo de datos en listas.

# byrow me indica que la carga sea por filas y el T nos indica que sea verdadero la carga por filas.
j <- matrix(c(1,6,2,5,3,4,4,3,5,2,6,1),6,2,byrow = T);j
x[j]