library(XLConnect)

lwb <- loadWorkbook("ejemplo1.xlsx", create=FALSE) # Nombre del libro
bd0 <- readWorksheet(lwb,sheet="Hoja1") # Nombre de la hoja
bd1 <- readWorksheet(lwb,sheet="Hoja2") # Nombre de la hoja
bd0
bd1
# Copiar y pegar como valores
# Primero probemos con ejercicios sencillos.
# Desde excel podremos cargar archivos de Excel.
#Siempre que se cargue, será un dataframe.

# Para ver parte de la función de base de datos
head(bd0) # Muestra los 6 primeros.
head(bd1) # Muestras los 6 últimos.

tail(bd0)
tail(bd1)

# Nos permiten saber si nuestros datos han cargado correctamente.
# Está especializado en Excel.

library(readxl)
bd <- read_excel("ejemplo1.xlsx",sheet = "Hoja1",col_types = c("text","text","numeric"))
head(bd)

library(XLConnect)
lwb <- loadWorkbook("creando.xlsx",create = TRUE)
createSheet(lwb,name = "creandohoja")
