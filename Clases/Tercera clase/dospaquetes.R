#
# Copyright © 2018 Oromion <caznaranl@uni.pe>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# install.packages("Rcmdr")
setwd("~/Desktop/Repositorios/Curso-de-R-Studio/Clases/Tercera clase")
set.seed(100) # 100 no influye en nada, pero usaemos 100 para obtener los mismo resultados.
v1<-runif(n = 100, 0, 20)
v2<-runif(n = 100, 10, 100)
v3<-runif(n = 100, 5, 10)
v4<-runif(n = 100, 3, 10)
v5<-runif(n = 100, 5, 30)

# Creando un marco de datos:
bd <- data.frame(v1,v2,v3,v4,v5)

#Exportar datos a un libro .xls
library(XLConnect)

# Creando0 un marco de datos:
bd<-data.frame(v1,v2,v3,v4,v5)

lwb<-loadWorkbook("BASEDATA.xlsx", create=TRUE) #  Creando un libro nuevo
createSheet(lwb, name="BD")
createName(lwb,name="BD",formula="BD!$A$1") # Columna A, fila 1 de excel.
writeNamedRegion(lwb,bd,name="BD") # bd es la parte más importante de esta línea. Allí se alimeeta los datos
saveWorkbook(lwb)

# Obtenemos una sola muestra de tamaño 100, con una distribución de probabilidad uniforme. Cada elemento tiene la misma probabilidad de ser elegido.

# Importar datos de un libro de excel

lwb<-loadWorkbook("BASEDATA.xlsx", create=FALSE) # FALSE, se va a leer y no crear
datos<-readWorksheet(lwb,sheet="BD")
datos

# Es un data frame el objeto "alzado".

subset(datos, v3>9) # Es un subconjunto de tus datos, sqr seleccionar y hacer un filtro en una tabla.

##########################################################################################################

# Todos los objetos que se crean fuera de la función ya no existe.

# Crear una función que ingresa una data y que retorna una consulta.
setwd("~/Desktop/Repositorios/Curso-de-R-Studio/Clases/Tercera clase")
source("mifuncion.R")
basedatos <- datos
vector <- v3
n <- 7
mifuncion(basedatos, vector, n)