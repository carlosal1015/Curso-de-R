# Creando una función en R.
# Esta función une vectores y devuelve una matriz unido por columnas
# y un vector suma de por columnas

matrizxyz <- function(x,y,z){
  mat <- cbind(x,y,z)
  suma <- colSums(mat)
  return(list(mat = mat, suma = suma))
}
