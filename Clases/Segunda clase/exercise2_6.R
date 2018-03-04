# exercise2_6.R
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

x <- matrix(1:36, nrow = 6, ncol = 6); x
x[6,6]# alt +91 y alt + 93 para escribir corchetes.
x[6,] #fila 6
x[,6] # columna 6

#Observar
i <- matrix(c(1,1,2,2,3,3,4,4,5,5,6,6),6,2,byrow = T);i#No puedo usar 7, 7.
x[i] # He usado una matriz para llamar a otra matriz, es más preciso y complejo.
i
#Vamos a ver la indexación, llamando desde una matriz.

# i es una matriz y x es también es una matriz.

#Cubo de datos en listas.

# byrow me indica que la carga sea por filas y el T nos indica que sea verdadero la carga por filas.
j <- matrix(c(1,6,2,5,3,4,4,3,5,2,6,1),6,2,byrow = T);j
x[j]