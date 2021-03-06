# Nube de puntos
# M�todo de Kendall
# La estad�stica da la metodolog�a
setwd("F:/Clase_de_R_7")

load("glucosa.Rdata"); attach(glucosa)
# Analizar distribuci�n de variables �normal?
shapiro.test(g2antes); shapiro.test(g2des)
# Calculamos el coeficiente de correlaci�n mediante la funci�n cor
cor(g2antes, g2des) # Coef. de correlaci�n entre el tiempo2 antes y despu�s de haber realizado la prueba de glucosa en mujeres
cor.test(g2antes, g2des) # O simplemente con el Test de correlaci�n


scatterplot(g2antes ~ g2des, data=glucosa, ellipse=TRUE, main="Diagrama de dispersi�n", legend=list(coords="topleft"), id=list(method="identify"))

require(MASS)
require(ggplot2)
data("Cars93")

ggplot(data = Cars93, aes(x = Weight, y = Horsepower)) +
geom_point(colour= "red4") +
ggtitle("Diagrama de dispersi�n") +
theme_bw() +
theme(plot.title= element_text(hjust= 0.5))

# Representaci�n gr�fica
par(mfrow= c(1, 2))
hist(Cars93$Weight, breaks= 10, main= "", xlab= "Weight", border= "darkred")
hist(Cars93$Horsepower, breaks= 10, main= "", xlab= "Horsepower", border= "blue")
par(mfrow= c(1, 2))
qqnorm(Cars93$Weight, main = "Weight", col = "darkred") # grafico de probabilidad normal cauntil cuantil
qqline(Cars93$Weight)
qqnorm(Cars93$Horsepower, main = "Horsepower", col = "blue")
qqline(Cars93$Horsepower)
# solo peso cumple la normalidad




# Representaci�n gr�fica
par(mfrow= c(1, 2))
hist(log10(Cars93$Horsepower), breaks = 10, main = "", xlab= "Log10(Horsepower)", border = "blue")
par(mfrow= c(1, 2))
qqnorm(log10(Cars93$Horsepower), main = "", col = "blue")
qqline(log10(Cars93$Horsepower))
# Test de hip�tesis para el an�lisis de normalidad
par(mfrow= c(1, 1))
shapiro.test(log10(Cars93$Horsepower))


# Representaci�n gr�fica
ggplot(data = Cars93, aes(x = Weight, y = Horsepower)) +
geom_point(colour= "red4") +
geom_segment(aes(x = 1690, y = 70, xend= 3100, yend= 300),linetype="dashed") +
geom_segment(aes(x = 1690, y = 45, xend= 4100, yend= 100),linetype="dashed") +
ggtitle("Diagramade dispersi�n") +
theme_bw() +
theme(plot.title= element_text(hjust= 0.5))

# Se debe analizar antes de calcular

# Correlaci�n de Pearson
cor.test(x = Cars93$Weight, y = log10(Cars93$Horsepower),alternative = "two.sided", conf.level= 0.95, method = "pearson")
# Correlaci�n de Spearman
cor.test(x = Cars93$Weight, y = log10(Cars93$Horsepower),alternative = "two.sided", conf.level= 0.95, method = "spearman")

# fondo vs forma

# no hemos usado attach

# Con $\log$ suavizamos la distribuci�n

# correlacion no implica causalidad

#coeficiente de determinacion = r*r

# no cuando el *r*r es alto, porque los residuos no pueden ser normales.

# la distribucion conjunta es la normal, verificando que los residuos son normal

# teoria consumo, el consumo depende de la renta(ingreso)
# el consumo no solo depende la renta, sino de otros factores que no tome el modelo, esos efecto de esa ausencia de esos factores, deben estar en el componente aleatorio y
# luego analizamos la descomposicion de la variabilidada, la varianza,
# veremos luego el analisis de varianza, anova.
# N media 0, varianza constante
# indpendiente: el valor observado de un individio no se repita


# depende de las unidades de medida

# en economia se estudia la elasticidad (derivada)

# lo aleatorio tambi�n est�, por el modelo

# la varianza es del componente aleatorio (los residuos o los errores)

