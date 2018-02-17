# Creando una función

matriz.v2.xyz <- function(x,y,z){
  mat <- cbind(x,y,z)
  suma <- colSums(mat)
  return(list(mat = mat, suma = suma))
  # Buena práctica. Es mejor que las salidas sean con listas
}
# El objeto suma (derecha) se guarda en la lista sum
# ----------------------------

x <- c(0,1,2,3)
y <- c(-1,5,2,0)
z <- c(8,9,2,5)

matriz.v2.xyz(x,y,z) #Ingresa vectores y expulsa una matriz.

# Primero todas las funciones y despu{es todos los datos y comandos}

# La función se crea al inicio y debajo se utiliza.

# ¿Cómo crear documentación de la función?

# Crear un archivo fuente, a veces creamos funciones más extensas.

# Tratar de no usar caracteres especiales como . , ; : 