mifuncion <- function(basedatos, vector, n){
  consulta <- subset(basedatos, vector>n)
  return(consulta)
}