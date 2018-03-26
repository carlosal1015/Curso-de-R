# exercise3_5.R
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

library(RVAideMemoire)
# prueba de Cochran 
res<-c(1,1,1,1,1,1,0,1,0,1,1,0,0,0,0,1,1,1,1,1,1,1,1,0,
       0,0,1,0,1,0,1,1,1,1,1,1)
sportsman=gl(3,1,36,labels=LETTERS[1:3])
game<-gl(12,3,labels=letters[1:12])
mat<-cbind(res,sportsman,game); mat
cochran.qtest(res~sportsman|game)
doble factor, variable de bloqueo.

Si no es $<\alpha$, entonces no se rechaza la hipótesis nula. (No hay diferencia en las proporciones, hay igualdad en las proporciones). En realidad los grupos son iguales al menos en la variable en que se examina.

Peso vs notas (varones oD mujeres).

Prueba de suma de rango de Friedmann.
# Pueden ser valores entero.


Toda prueba estadística está sujeto a condiciones. Las paramétricas son más robustas y surgieron después.
Lo no paramétrico no necesita ser normalizado. Todas las herramientas estadísitcas tienen condiciones, sino los resultados no serán válidos.

library(Rcmdr)

# Clic en editar conjunto de datos
# Estad{istica}, no paramétrico, suma de , la creo Fisher.


data<-iris
local({
  .Responses <- na.omit(with(iris, cbind(Petal.Length, Petal.Width, 
                                         Sepal.Length, Sepal.Width)))
  cat("\nMedians:\n") 
  print(apply(.Responses, 2, median)) 
  friedman.test(.Responses)
})


Podemos usar la base de datos para segmentar las especies como grupos y aplicar la prueba de Kruskal - Wallis.


with(iris, tapply(Petal.Length, Species, median, na.rm=TRUE))
kruskal.test(Petal.Length ~ Species, data=iris)

Se rechaza la hipótesis nula, por lo tanto para esa variable longitud del pétalo. Son poblaciones diferentes.

Hemos visto chi cuadrado para bondad de ajuste, también independecia de asociación, distribución, homogeneidad.

Variable dicotómica (fuma/no fuma; ausencia/presencia).

Cuando tenemos variables dicotómicas donde se aplioca chi cuadrado menor a 50 valores, se debe de aplicar la pruena de yates.


visión <- matrix(c(442,514,38,6), nrow = 2, byrow = T); visión
dimnames(visión) <- list(c("normal", "daltónico"), c("Masculino", "Femenino")); visión

chisq.test(visión, correct = F)  # Sin correción.

chisq.test(visión, correct = T) # Con correción.

Se rechaza la hipótesis nula, entonces son asocidads las variables.

independintes hipótesis nula
asociadas hipótesis alterna