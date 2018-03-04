# exercise3_4.R
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

setwd("C:/Users/Usuario.Usuariopc.002/Desktop/Tercera clase")
bd4 <- read.table("basedatos4.txt",
                  header = TRUE,
                  sep = ";",
                  dec = ",")
bd4
# En R los decimales son con . 
# Dentro de R no puyede haber n{umero con ,, sería texto.}
# Después de cada coma, podemos dar enter