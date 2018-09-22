# Las variables son del tipo cualitativo
# Tipo es distinto de la escala de medida
# Veremos otro test de independencia
# Identificar las hipótesis
# Las variables son independientes
# El p-valor se compara con 0.05
# No tenemos el punto crítico de $xi$ cuadrada.
# Error tipo 1: Nivel de significancia 0.01
# Comparamos con el $\alpha$
# El nivel de significancia es de 0.00001521
# Obtenemos una probabilidad menor que el $\alpha$
# Xicuadrada es continua Multinomial (discreta)
# Hay que considerar un factor de correción
# No necesariamente el valor que nos da la prueba debemos tomar,
# Si es de 2 x 2, obtamos por Fischer.
# Las relaciones de las variables pueden no ser significativas
# Grados de libertad, es la cantidad de variables
# Cuando obtengamos mensaje warning, revisas los valores epserados
# En la próxima clase veremos cómo medir la asociación significativas de variables


# Es la proporción poblacional
# La distribucíón es aproximadamente normmal
# q = 1-p
# z sigue una distribución normal estándar
# El nivel de significancia es de 0.05
# La hipótesis nula es 36
# Constraste hay bilateral o unilateral. La hipótesis nula considera la igualdad, la hipótesis alternativa
# Planteamiento
# Hipoteis bilateral, la hipotesis nula es de 0.36

# Llegar de una distribución binomial hacia la distribución normal.

# No se rechaza la hipótesis nula, pues el p-valor es
# El valor de prueba es 0.36
# 9.690 está en el intervalo
# Un investigador debe tener todas las respuestas, sino recurrir al especialista. No mostrar un resultado parcial
# 0.34 está en el intervalo
# Ver para cada categoría
# Antes habia que recurrir a SAS
# Diseño --> Técnica


setwd("D:/Clase_de_R_5")
load("coches.RData")
attach(coches) # Describir el uso de sa función

summary(coches)
summary(coches$alcohol)
# Verificar que cada categoría de alcohol es signifactiva.
# El 1/2 dice que cada una de las categorías es igualmente significatitvas
# En el SPSS se puede verificar por filas o por columnas

# Se rechaza la hipótesis nula, las dos categorías son igualmente significativas
# No son igualmente significativas.
# Paramétricos: constraste de la media, estos datos provienen de una distribución normal ...?
# tiea wa aimilitudes

# La mediana es igual a 5 (Coreeción de la diapositiva)
# prueba t student es para la mediana
# Muestras pareadas, grupos pequeños y no hay suposición de normalidad
# Cuando no es exacto se suele usar V, en vez de W (Wisconsin), mitad de W = V
# Z es de distribución normal


# Test de Kolmogorov Smirnov
# $F_0$ es una distribución en general

# media 1.19933
# desviación estándar 0.76


# test de shapiro wilk es para comprobar la normalidad de un conjunto de datos
# https://en.wikipedia.org/wiki/Shapiro%E2%80%93Wilk_test

# Este test se usará para la regresión lineal

# series de tiempo dinámico ...

# Gráfico de cajas para el ancho del pétalo de iris

# Test de hipótesis es un análisis confirmatorio.

# Hemos llegado al 50% del curso.