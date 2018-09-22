# Kendall se usa cuando las variables son del tipo de escala.
# Transformar en intervalos las variables cuantitatuvas.

# Ejercicio: En SPSS se puede obtener muchos coeficientes de correlación como los de Sperman y Ke
# Revisar la ayuda en SPSS

x <-c(5,9,17,1,2,21,3,29,7,100) # Horas de estudio que dedican 10 alumnos
y <-c(6,16,18,1,3,21,7,20,15,22) # Número de respuestas correctas en examen
cor(x,y, method="kendall")
cor.test(x,y, method="kendall")

# T es el estadístico de prueba.
# Proviene del test de independecia y están en función a la chi cuadrada
# Requieren que ambas sean del tipo ordinal

# Hemos visto la parte no paramétrica

# Sigue la distribucion t de student, prueba para la media, decir el nombre de la prueba y no de la estadistica

# X sigue una sigue una normal
# Usariamos las puntuaciones z si la varianza sería conocida
# $\mu$ es de la media poblacional, $\mu_0$ es de la muestra, es paramatrico porque contrastamos parmáetros

# Se llama bidireccional cuando $\mu=\mu_0$

# Usamos la $T$ para estimar la varianza, $n-1$ son los grados de libertad, se ha estimado un parámetro. No conocemos la media poblacional y la calculamos con la media de la muestra
# Perdemos un valor, un grado de libertad.

# Tomamos la decisión con respecto al valor. REgla de decision $\neq$ conclusion

# el p-valor es mayor el nivel de significancia

# Buscar tipos de contrastes, hs sido un contraste bilateral

# Cuando la hipotesis es bilateral podemos obtener un intervalo de confianza

# 4 es el valor de prueba = $\mu_0$

# cae en el error, rechazamos la hipótesis nula

# Primero se ve lo descriptivo, 

# Necesitamos ver si la distribución es más o menos normales.

# Si no es normal, haremos una distribución

# Debe verificar que cumple los supuestos

data(SleepStudy) # Cargamoslos
datos del estudiode sueño
hist(SleepStudy$AverageSleep, col="lightSalmon", xlab="Promediode horasde sueñodiarias", main="Estudiodel sueñoen \n estudiantesuniversitarios")

# cuando es mayor 

# Investigar: En la hipotesis nula debe ser igualadad

# la direccion la da la hipotesis alternativa

# En un test unilateral, dividimos entre 2 y comparar con el 0.05

# en spss da el valor multplicado x 2

# Investigar en el R

# revisar el manual de pruebas de hipótesis


# la region de rechazo va a estar en ese lado.

# Si el planteamiento no está bien, se puede o

## qqplot es el gráfico de cunatil a cuantil

# bandas de confianza, teoria

# Los puntos que no están en la normal

# Ahora medias de dos poblaciones

$\mu_1\neq\mu_2$ bilateral

En los paquetes

# Hay que estimar un solo parámetro

x <-c(0.80,0.83,1.89,1.04,1.45,1.38,1.91,1.64,0.73,1.46)
y <-c(1.15,0.88,0.90,0.74,1.21)
var.test(x,y); t.test(x, y, alternative="greater", var.equal=TRUE)

# Si no colocamos var.equal=TRUE asumirá diferentes

# Asume distintos medias

# Sexo es avriable categorica

# Si haciamos el test de varianza, pudieramos haber obtenido poblaciones no homogeneas

# con aggregate, cambia el archivo de datos

# Distribuciones de dos poblacoones normales relacionadas

$y_1$ es la media poblacional????


x <-c(1.83, 0.50,1.62,2.48,1.68,1.88,1.55,3.06,1.30)
y <-c(0.878,0.647,0.598,2.05,1.06,1.29,1.06,3.14,1.29)
shapiro.test(x); shapiro.test(y); var.test(x,y)
t.test(x, y, paired=TRUE, alternative="greater")
# F es la estadísitica de prueba

# Son muestras pareadas
# Son dos tratamientos distintos para una sola población

# varianza poblacional es el parámetro y el valor de prueba es $\sigma_0$%2 (cuadrado)

# 1 es el valor de prueba


library(TeachingDemos)
sigma.test(SleepStudy$AverageSleep, sigma=1)

Para especificar un nivel de confianza distinto, agregar

# ratio de variazan es el conciente

# T es la estadistica T, antes usamos como una distribucion xi cuadrada, ahora como una fischer, n es el numero de casos de cada uno, tamaño de la muestra

# las variables cualitaitaas se denen convertier en factores

# es la glucosa cérica

# Diabetes estacionables

# Variable de grupo: Si o No embarazado

# Ahora diremos variabilidad de tiempo en el examen
# (uno es factor), el 

# es independiente porque hemos medido en poblaciones embarazadoas y no embarazados

# son la misma poblacion, estan emparejadas, los grupos son si están dadno un examen o si están ateneidno a una clase.

fix(glucosa)

data(QuizPulse10)
library(PairedData)
p<-with(QuizPulse10,paired(Lecture,Quiz))
Var.test(p)

# no existen diferencias significativas entre las varianzas de los dos grupos de tiempos de estudios

# la variable cuantitativa es tiempos

# la idea intuitiva de cada tema
# factor es variable caulitataiva y los dentro de los grupos son cuanti

# diseños experimentales: agricultura o biologia

# la media puede variar por la varianza, y sus medias por ser las mimas, primera varianzas

# todas son pruebas de hipotesis
# suma de cuadrados totaltes

# suma de cuadrado residual
#suma de cuadradops explicasdas|

Variacion debida al factor: SCE
debida a la muestra aleatorai: SCR


SCT
SCE (entre)
SCR (intra)

# muestras o niveles del factor, grados de libertaad

# comparar la tabla F
#nos saldra una tabla de 3 o 4 filas

pASOS: 1, 4 y 5 hacemos nosotros

# pRIMERO: VER SI HAY DIFERENCIAS
# SEGUNDO: COMPARACIONES MULTIPLES

# HOMOSTICIDAD, NORMALIDAD

# rueba de una variable dentro de cada grupo

Pag 57
# instravarianza
# entrevarianza


SUma de cuadrados medios <- Varianza

# las provinicias son distintas, ver la hipotesis nula y 

# significativo por el marjen de error

# suma decuardados en tre los grados de libertad Mean Sq

# metodo de benforroni no es mejor que el metodo de tukey

# Ver la prueba de Tukey en internet

Friedman y kruskal son no paraemtricas para anova

h_0 va a ser igualdad de medianas

# wilconsson o mann whitney (2 muestras independientes en el caso no parametrico)


# No se cumple normalidad noi homogenidad

en pruebas no parametrics comparamos distribuciones

# Desarrrollar y contrastar la H_0

# Sabado: Correlacion y regresion lineal