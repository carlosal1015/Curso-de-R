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

x <- c(0,1,2,3)
y <- c(-1,5,2,0)
z <- c(8,9,2,5)
setwd("~/Desktop/Repositorios/Curso-de-R-Studio/Clases/Tercera clase")
source("matrizxyz.R") # Se cargó la función.
matrizxyz(x,y,z)

# Hemos creado una función matrizxyz y se le guardó con el mismo nombre que la función.
# En un nuevo script se le ha colocado la función fuente, alza el script. Es como que source lee un nuevo script, puede leer más de uno.

# Es como que en source se oculta toda la función.
# Hemos creado funciones com muchos parámetros y cargar funciones desde la fuente.

# Tratar de no alterar el script principal. Es más ordenado y eficiente. Usar comentarios.