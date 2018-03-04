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

setwd("C:/Users/Usuario.Usuariopc.002/Desktop/Tercera clase")
bd2 <- read.table("basedatos2.txt", header = TRUE, sep = ";") # El orden a veces puede importar.
bd2
# Es un marco de datos, porque no aparace corchetes.
dim(bd2)