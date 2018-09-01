# exercise2_10.R
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

# Aplicación:
# ¿Cuál sería el resultado de ejecutar las siguientes instrucciones?

x = c(1,3,5,7,9)
y = c(2,3,5,7,11,13)

x + 1 # Muestra un vector con cada elemento aumentado en 1.
y * 2 # Muestra otro vector con cada elemento multiplicado por 2.
length(x); length(y) # Muestra la cantidad de columnas del vector x. Análogamente con y.
x + y # Muestra un vector con cada elemento la suma de los elemento de x e y.
sum(x>5); sum(x[x>5])# Primero obtiene como valor lógico y luego lo suma, es decir,
#1+1=2. En el otro caso suma los valores 7 y 9 da 16.

sum(x>5|x<3)# "|" se lee o "&" se lee y.
y[3]
y[-3]
y[x]
y[y>=7]

# Con el operador 'as.numeric()'
# Cuando es corchete, se llama a una matriz, es un arreglo numérico indexado, se le puede llamar a su posición.
