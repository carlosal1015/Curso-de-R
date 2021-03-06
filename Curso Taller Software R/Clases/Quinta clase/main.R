# Las variables son del tipo cualitativo
# Tipo es distinto de la escala de medida
# Veremos otro test de independencia
# Identificar las hip�tesis
# Las variables son independientes
# El p-valor se compara con 0.05
# No tenemos el punto cr�tico de $xi$ cuadrada.
# Error tipo 1: Nivel de significancia 0.01
# Comparamos con el $\alpha$
# El nivel de significancia es de 0.00001521
# Obtenemos una probabilidad menor que el $\alpha$
# Xicuadrada es continua Multinomial (discreta)
# Hay que considerar un factor de correci�n
# No necesariamente el valor que nos da la prueba debemos tomar,
# Si es de 2 x 2, obtamos por Fischer.
# Las relaciones de las variables pueden no ser significativas
# Grados de libertad, es la cantidad de variables
# Cuando obtengamos mensaje warning, revisas los valores epserados
# En la pr�xima clase veremos c�mo medir la asociaci�n significativas de variables


# Es la proporci�n poblacional
# La distribuc��n es aproximadamente normmal
# q = 1-p
# z sigue una distribuci�n normal est�ndar
# El nivel de significancia es de 0.05
# La hip�tesis nula es 36
# Constraste hay bilateral o unilateral. La hip�tesis nula considera la igualdad, la hip�tesis alternativa
# Planteamiento
# Hipoteis bilateral, la hipotesis nula es de 0.36

# Llegar de una distribuci�n binomial hacia la distribuci�n normal.

# No se rechaza la hip�tesis nula, pues el p-valor es
# El valor de prueba es 0.36
# 9.690 est� en el intervalo
# Un investigador debe tener todas las respuestas, sino recurrir al especialista. No mostrar un resultado parcial
# 0.34 est� en el intervalo
# Ver para cada categor�a
# Antes habia que recurrir a SAS
# Dise�o --> T�cnica


setwd("D:/Clase_de_R_5")
load("coches.RData")
attach(coches) # Describir el uso de sa funci�n

summary(coches)
summary(coches$alcohol)
# Verificar que cada categor�a de alcohol es signifactiva.
# El 1/2 dice que cada una de las categor�as es igualmente significatitvas
# En el SPSS se puede verificar por filas o por columnas

# Se rechaza la hip�tesis nula, las dos categor�as son igualmente significativas
# No son igualmente significativas.
# Param�tricos: constraste de la media, estos datos provienen de una distribuci�n normal ...?
# tiea wa aimilitudes

# La mediana es igual a 5 (Coreeci�n de la diapositiva)
# prueba t student es para la mediana
# Muestras pareadas, grupos peque�os y no hay suposici�n de normalidad
# Cuando no es exacto se suele usar V, en vez de W (Wisconsin), mitad de W = V
# Z es de distribuci�n normal


# Test de Kolmogorov Smirnov
# $F_0$ es una distribuci�n en general

# media 1.19933
# desviaci�n est�ndar 0.76


# test de shapiro wilk es para comprobar la normalidad de un conjunto de datos
# https://en.wikipedia.org/wiki/Shapiro%E2%80%93Wilk_test

# Este test se usar� para la regresi�n lineal

# series de tiempo din�mico ...

# Gr�fico de cajas para el ancho del p�talo de iris

# Test de hip�tesis es un an�lisis confirmatorio.

# Hemos llegado al 50% del curso.