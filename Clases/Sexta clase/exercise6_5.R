# exercise6_5.R
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

setwd("~/Desktop/Repositorios/Curso-de-R-Studio/Clases/Sexta clase") # Fijar directorio de trabajo en R.

library(readxl) # Cargar librería `readxl` para leer hojas de cálculo de MS Ofiice Excel.

# Pregunta 1: Cargar la base da datos `lluvias.xls` en R.
lluvias <- read_excel("~/Desktop/Repositorios/Curso-de-R-Studio/Clases/Sexta clase/lluvias.xls", sheet = "datos"); lluvias

# Pregunta 2: Crear y cargar una sub base de datos tal que la primera columna `X__1` esté en el rango enero de 1964 hasta diciembre de 1970.
lluvias1 <- lluvias[lluvias$X__1>="1964-01-01" & lluvias$X__1<="1970-12-31",]; lluvias1

# Pregunta 3: Cargar y crear una sub base de datos tal que estén presente las columnas `GRANJA KCAYRA`, `ZURITE`, `URUBAMBA`, `ANTA ANCACHURO`
columnas <- c("GRANJA KCAYRA", "ZURITE", "URUBAMBA", "ANTA ANCACHURO")
lluvias2 <- subset(lluvias1, select = columnas); lluvias2

# Pregunta 4: A partir de la sub base de datos creado en la pregunta 3, agregue una quinta columna con los promedios de cada fila.
promedios<- data.frame(Promedio=rowMeans(lluvias2))
lluvias3 <- data.frame(lluvias2, promedios); lluvias3


# Referencias

# Apuntes de clase de RStudio. Facultad de Ciencias Matemáticas, Universidad Nacional Mayor de San Marcos.
# https://github.com/carlosal1015/Curso-de-R-Studio
# https://rveryday.wordpress.com/2016/11/29/5-ways-to-subset-a-data-frame-in-r/
# https://stackoverflow.com/questions/4605206/drop-data-frame-columns-by-name
# https://stackoverflow.com/questions/10945703/calculate-row-means-on-subset-of-columns