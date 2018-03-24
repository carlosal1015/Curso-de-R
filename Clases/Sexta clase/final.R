# Pregunta 1: Levantar la base de datos.

# 1) Cargar la base da datps.
# library(readxl)
# bd <- read_excel("C:/Users/LAB 1/Desktop/ejemplo lluvias.xls")
# bd <- data
# 
# 
# 2 Escoger ese rango enero de 1964 hasta diciembre de 1970
library(XLConnect)

lwb <- loadWorkbook("lluvias.xls", create=FALSE) # Nombre del libro
bd0 <- readWorksheet(lwb,sheet="datos") # Nombre de la hoja
bd1 <- readWorksheet(lwb,sheet="posicion") # Nombre de la hoja
# bd0
help("data.frame")
# bd1
# Consulta desde enero de 1964 hasta diciembre 1970
# Cargar las tres variables Granja Kcayra Urubamba Anta Anchuro
# Pregunta 3, carga la serie promedio
# Calcular la serie promedio que sea bimestral, unir los meses  y mostrar el promedio.
subset(bd0, v1>2 && v1 < 85)
x<-c(18,11,12,10,7,6,17)
source("mifuncion.R")


library(readxl)
lluvias <- read_excel("lluvias.xls",sheet = "datos",col_types = c("text","numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric","numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric","numeric","numeric","numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

lwb<-loadWorkbook("lluvias.xls", create=FALSE) # FALSE, se va a leer y no crear
datos<-readWorksheet(lwb,sheet="datos")
datos
c(lluvias, )