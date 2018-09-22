# Independiente, el errror de uno no depende del otro
# Damos por verdadera la normalidad
# lo que va a variar es la forma de analizar, depende de los datos

# en series de tiempo, en vez de nroammlidad habalamso de reido blanco, estacionario, etc

# 1) Analisis de correlacion
# 2) 

library(foreign)
pacientes <-read.spss(file="pacientes.sav", to.data.frame=TRUE)
attach(pacientes)
# Análisis univariado
summary(pacientes)
# Correlación, prueba de independencia y diagrama de dispersión
cor.test(tas, edad, alternative = "two.sided", method = "pearson")
plot(edad, tas, col="blue4", main="Diagrama de dispersión", pch= 19)
# Formulación modelo. Y=tensión, X=edad
# Prueba de normalidad en la variable dependiente
shapiro.test(tas)

# al inicio predigo mis posibles respuestas
# podriamos hacer un grafico de cajas para ver los datos

# A medida que la edad del paciente se incrementa, la tensión arterial aumenta de manera alta
# si es linal y homocedastica, no tien forma conica ni se separarn los datos 
# sigue una distribucion normal
# es mayor que 0.05, paso la prueba de normalidad

# lo confirmatorio es inferencia estadistica
# lm es modelo lineal
# los valores observados son los $y$, 
vcov es la matriz de covarianzas

aov es la relacion


# si no se rechaza $H_0$, el modelo no es valido

1) Modelo a estimar
2) Estimamos los paramaetros
3) $\overline{y}$ es la respuesta estimada.
4) residuo es la diferenia del valor estimado - valor de la respuesta

# SCT: Suma de cuadrados total
# SCE debido al modelo
# SCR respuesta-recta ajustada

suma de cuadrados medios, la varianza en la pag 46

# p-valor, primera forma (individial)
# segunda forma, estadistico de contraste es mayor que el punto critioc (global)


# toda la variacion esta siendo recogida por el modelo (R*R=1)

# el 80% de la variabilidad es explicada por el modelo

# el 50% de la variabilidad

si R*R=0, el modelo no recoje

# en  r.l.m se usa el coeficiente de determinacion ajustado


# Paso 2_ Analisis del akiste de modelo



# Ajuste del modelo
regresion<-lm(tas ~ edad)
summary(regresion) # Muestra resultados
confint(regresion, level= 0.95) # Intervalos de confianza
aov(regresión)# ANOVA
## Otras opciones del análisis
regre2 <-lm(tas ~ edad -1) # Omite el intercepto
summary(regre2)$coefficients

# investigacion y dedicacion

# grupos multidisciplinarios se trabaja mejor
3constrasnte individiales, cada coeficiene su significania, nos dice incluso con ssiu grados de libertad

error estandar residual, es la varianza del error

la bondad de ajuste nos dice que con 64%
% TODO

F es el contraste global
en el informe final pone lo mas relevante

# Los de arriba son individuales
# Los de abajo son globales

# se rechaza la hipotesis nula


# beta_0 viene a ser la media, el valor esperado de y dado x

103.3527 es el valor medio de la presion cuando el valor de la edad no es significativa
 0.98 incrementa en una unidad de la presión
observada-estimada=error

# hay que integrar o incorporar un intervalo de confianza

# Ajuste de la recta de regresión
plot(tas ~ edad, main= "Ajuste de la recta", xlab='Edad', ylab='Presión arterial sistólica', pch= 19)
abline(regresion, col="red")

# falta verificacion del modelo con el analisis de residuo














consumidores <-read.spss(file="vino.sav", to.data.frame=TRUE)

attach(consumidores)
la variable es continua


summary(consumidores)
cor.test(Vino, Card, alternative="two.sided", method="pearson")
plot(Vino, Card, col="blue4", main="Diagrama de dispersión", pch= 19)





fix(consumidores)


library(foreign)
vino <-read.spss(file="vino.sav", to.data.frame=TRUE)
attach(vino)
# Análisis univariado
summary(vino)
# Correlación, prueba de independencia y diagrama de dispersión
cor.test(Vino, Card, alternative = "two.sided", method = "pearson")
plot(Vino, Card, col="blue4", main="Diagrama de dispersión", pch= 19)

# Formulación modelo. Y=tensión, X=edad
# Prueba de normalidad en la variable dependiente
shapiro.test(Card)

#en la medida que aumenta el consumo de vino disminuye la informacion cardiaca y viceversa

# Con la práctica, resolver la práctica calificada y dar un buen informe.
# Acabar los ejercicios
# Diagnosos del modelo y pronostico

# Analisis de influencia, falta analisis de los datos. ese es otro analisis

