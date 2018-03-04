# exercise4_3.R
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

bdiris <- iris
head(bdiris)
bdiris <- bdiris[,c(1,2)]

layout(matrix(c(1,2,3,4, 5, 5), 3, 2, byrow = T))
MAT <- matrix(c(1, 2, 3, 4,5, 5), 3, 2, byrow = T)
layout(MAT)#Recibe una matriz y el dispositivo gr{afico lo partticiona como la matriz}. Cuando los n{umerops se repiten se crean un solo grafico de ese tipo.
#layout.show me muestra la cantidad de graficos.

layout.show(5)
plot(bdiris)
plot(bdiris)
plot(bdiris)
plot(bdiris, "blue")
plot(bdiris, col="red")

1, 2, 3, 4, 5, 5
##
1 2
3 4
5 5 #Se unen los gr'aficos.

# Crear un grafico y los alrededores crear otros graficos