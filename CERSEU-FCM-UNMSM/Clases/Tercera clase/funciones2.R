# Creando una función

matriz.v1.xyz <- function(x,y,z){
  return(cbind(x,y,z)) # cbind por filas o por columnas.
}

# ----------------------------

x <- c(0,1,2,3)
y <- c(-1,5,2,0)
z <- c(8,9,2,5)

matriz.v1.xyz(x,y,z) #Ingresa vectores y expulsa una matriz.

# Primero R debe reconocer la función, luego leer los argumentos y después ejecutar la acción.

# El + en el prompt indica que está esperando una acción, oprimimos teclado esc para salir y el prompt muestra >