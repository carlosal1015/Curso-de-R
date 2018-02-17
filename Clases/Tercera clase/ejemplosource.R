x <- c(0,1,2,3)
y <- c(-1,5,2,0)
z <- c(8,9,2,5)
setwd("C:/Users/Usuario.Usuariopc.002/Desktop/Tercera clase")
source("matrizxyz.R") # Se cargó la función.
matrizxyz(x,y,z)

# Hemos creado una función matrizxyz y se le guardó con el mismo nombre que la función.
# En un nuevo script se le ha colocado la función fuente, alza el script. Es como que source lee un nuevo script, puede leer más de uno.

# Es como que en source se oculta toda la función.
# Hemos creado funciones com muchos parámetros y cargar funciones desde la fuente.

# Tratar de no alterar el script principal. Es más ordenado y eficiente. Usar comentarios.