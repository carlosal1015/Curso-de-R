# exercise4_1.R
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

# TODO funcion que valide el proceso de instalar y cargar.

setwd("~/Desktop/Repositorios/Curso-de-R-Studio/Clases/Cuarta clase")
install.packages("JGR")
install.packages("Deducer")
install.packages("XLConnect")
install.packages("DeducerExtras")

# No es necesario incluir comillas al usar library

library(JGR)
library(Deducer)
library(XLConnect)
library(DeducerExtras)

JGR()

bd <- readWorksheet(loadWorkbook('~/Desktop/Repositorios/Curso-de-R-Studio/Clases/Cuarta clase/Libro1.xlsx'),sheet=1)
ggplot() +
  geom_bar(aes(y = ..count..,x = as.factor(FREC)),data=bd,colour = '#ff0000',fill = '#ff9900',alpha = 0.5)

# Quitar variables

bd1 <- bd[,c(6,7)]
head(bd1)

fig1 <- plot(bd1, type="p", main="Tìtulo principal", xlab="titulo x", ylab="tituloy", col="red")
fig2 <- plot(bd1, type="l", main="Tìtulo principal", xlab="titulo x", ylab="tituloy", col="red")
fig3 <- plot(bd1, type="s", main="Tìtulo principal", xlab="titulo x", ylab="tituloy", col="red")


library(Rcmdr)

par(mfrow = c(2,2))