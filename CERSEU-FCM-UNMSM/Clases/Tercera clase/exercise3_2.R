# exercise3_2.R
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

setwd("~/Desktop/Repositorios/Curso-de-R-Studio/Clases/Tercera clase")
bd2 <- read.table("basedatos2.txt", header = TRUE, sep = ";"); bd2
# El orden dentro de la función read.table a veces puede importar.
# Es un marco de datos, porque no aparece corchetes.
dim(bd2) # La dimensión de b2.