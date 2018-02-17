# n debe ser natural
# subset es un subconjunto de tus datos, sqr seleccionar y hacer un filtro en una tabla.
mifuncion <- function(basedatos, vector, n){
  consulta <- subset(basedatos, vector>n)
  return(consulta)
}