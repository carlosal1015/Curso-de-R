# ejemplo2.R
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

x <- 1:100
x
# library(?MASS)
library(MASS)
bd <- crabs
colnames(bd)

bd$sex
bd[,2]
c(4,4,3,2)
x <- factor(1:3,labels = c("A","B","C"))
x
#c es la funci�n concatenar.
# No se debe cambiar los nombres de factor, labels y c.
v <- c(1,1,1,2,2,2,3,3)
x <- factor(v,labels = c("A","B","C"))
x

# Creando una matrix

M1 <- matrix(1:36,6,6)
M1
M2 <- matrix(1:36,6,6,byrow=TRUE)
M2

# Todo se convierte a texto, puesto que A es una letra y lo demás es número, predomina texto.

v <- c(1:35,"A")
v
matrix(v,6,6,byrow = TRUE)

v <- c(1:34)
v
matrix(v,6,6,byrow = TRUE)

# Creando un marco de datos
# Repite el elemento x, n veces rep(x,n).
v1<-1:10
v2<-rep("A",10)
v3<-rep(3,10)
x<-data.frame(v1,v2,v3); x
x$v1
x[,2]
# El data frame se carga por columnas.
# En la línea 40 se ejecutan dos acciones.

# Creando una lista
z<-c(3,2,8,9)
x<-c(3,2,8,9)
y<-factor(1:3,labels = c("A","B","C"))
x<-list(A=z,B=y)
x

x$A
x$B

x[1]
x[[1]]
x[[1]][1] # alt + 91.
x[2]

# Creando una serie de tiempo

# Sat Feb 03 12:40:45 2018 ------------------------------

ts(1:47, frequency = 12,
   start = c(1959,2)) # empieza en febrero

ts(1:47, frequency = 12,
   start = c(1959,3)) # empieza en marzo

# Creando el objeto expresión

exp1<- expression(x/(y+exp(z)))
exp1
x<-1
y<-3
z<-5
eval(exp1)

# Conversión en R (qué son los archivos ocultos en R)

x<-c(TRUE,TRUE,FALSE);x #no lleva comillado
as.numeric(x)

x<-c("1","3","4") #cuando se use doble comillado será texto.
as.numeric(x)

x<-c("A","B","C")
as.numeric(x)

x<-c(5,0,1)
as.logical(x)

x<-c("FALSE", "FALSE", "T")
as.logical(x)

x<-1:50
y<-as.character(x)

mode(x)
mode(y)
