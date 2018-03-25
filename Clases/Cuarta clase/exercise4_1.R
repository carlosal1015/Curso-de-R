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

# TODO Encontrar función que valide el proceso de instalar y cargar. También cambiar el tamaño de las letras de las etiquetas en los ejes.

setwd("~/Desktop/Repositorios/Curso-de-R-Studio/Clases/Cuarta clase")
install.packages("JGR")
install.packages("Deducer")
install.packages("XLConnect")
install.packages("DeducerExtras")

library(JGR)
library(Deducer)
library(XLConnect)
library(DeducerExtras)

# No es necesario incluir comillas al usar el comando library.

JGR()

# No es necesario incluir comillas al usar library
bd <- readWorksheet(loadWorkbook('/Users/User/Desktop/Repositorios/Curso-de-R-Studio/Clases/Cuarta clase/Libro1.xlsx'),sheet=1)
ggplot() +
  geom_bar(aes(y = ..count..,x = as.factor(FREC)),data=bd,colour = '#ff0000',fill = '#ff9900',alpha = 0.5)

# Quitar variables

par(mfrow = c(2,2))
bd1 <- bd[,c(6,7)]
head(bd1)

fig1 <- plot(bd1, type="p", main="Tìtulo principal", xlab="titulo x", ylab="tituloy", col="red")
fig2 <- plot(bd1, type="l", main="Tìtulo principal", xlab="titulo x", ylab="tituloy", col="red")
fig3 <- plot(bd1, type="s", main="Tìtulo principal", xlab="titulo x", ylab="tituloy", col="red")

library(Rcmdr)

Dataset <- readXL("/Users/User/Desktop/Repositorios/Curso-de-R-Studio/Clases/Cuarta clase/Libro1.xlsx",
       rownames=FALSE, header=TRUE, na="", sheet="Hoja1", stringsAsFactors=TRUE)

par(mfrow = c(2,2))

f1 <- with(Dataset, Barplot(FACTOR, xlab="FACTOR", ylab="Frequency"))
f2 <- with(Dataset, Hist(FREC, scale="frequency", breaks="Sturges", 
                   col="darkgray"))
library(colorspace, pos=17)
f3 <- with(Dataset, pie(table(NIVEL), labels=levels(NIVEL), xlab="", ylab="",
                  main="Sector circular", col=rainbow_hcl(3)))
library(lattice, pos=18)
# Modificar xyplot por plot.
f4 <- plot(FY ~ FX, type="p", pch=16, auto.key=list(border=TRUE), 
       par.settings=simpleTheme(pch=16), scales=list(x=list(relation='same'),
                                                     y=list(relation='same')), data=Dataset)