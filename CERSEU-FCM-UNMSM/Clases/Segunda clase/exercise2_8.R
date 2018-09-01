# exercise2_8.R
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
