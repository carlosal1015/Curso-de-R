#Creando un libro y una hoja de excel sin excel
setwd("C:/Users/usuario.pc/Desktop/10022018")
library(XLConnect)
lwb <- loadWorkbook("creando.xlsx",create = TRUE)
createSheet(lwb,name = "creandohoja") 
saveWorkbook(lwb)

# Escribiendo

ID <- 1:20
Alumno <- paste("cod", 1:20, sep = "_")
set.seed(100)
# La semilla va antes del runif

Notas <- runif(20, min=0, max=20) # 20 números aleatorios que varian desde el 0 hasta el 20
Notas <-round(Notas,0) # Se redondea con cero decimales y sobre escribimos.
bd <- data.frame(ID,Alumno,Notas); bd

lwb <- loadWorkbook("bdescribir.xlsx", create = TRUE)# Se prefiere no usar comillas, ni caracteres especiales acentos, utf8 no acepta tildes.
createSheet(lwb,name="notascurso")
createName(lwb,name="notascurso", formula= "notascurso!$A$1")
writeNamedRegion(lwb,bd,name="notascurso")
saveWorkbook(lwb)
# Todo lo que se puede hacer en Excel se puede hacer en R.
#Un punto semilla, En R podemos dominar el punto inicial.