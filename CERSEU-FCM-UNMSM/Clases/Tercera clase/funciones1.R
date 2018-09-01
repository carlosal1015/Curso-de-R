#     Creando una función
#     
#     nombre <- function(#parámetros){
#      Cuerpo
        return(# Parámetros de salida)
      }
#     Tener cuidado con el nombre de la función, para empezar utilizaremos nombre un poco más extensos.

# No es obligatorio usar el parámetro return()
# Cuando la función es extensa, es mejor usar para especificar el retorno.
# Puede retornarse más de un objeto. 3 o m{as pore ejemplo}
        
sumaimpar <- function(n){
  sum(seq(1, n, by = 2))
}
# Le hemos añadido una nueva función dentro de R.

sumaimpar(n = 10) # La función no usó la función return.