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

require(ggplot2)



par(mfrow=c(2,2))
plot(regresion, col=red)

bptest es la prueba de la varianza para una muestra, si el p valor es alto, es significativo, se va cumpliendo los supuestos


el primero "agrega predicciones" en pacientes de la variable de respuesta
luego los residuos, la diferencias de los y's
y la otra est}a studentizadp

hemos obtenido una grafica a la medida, hemos usado regresion$rstudent

si hay datos atipicos, estudiar su causa

influencePlot es el resumen


3 es por la curtosis
obtenemos distancias estadisticas

el 15 es la posici{on (de la variable ajustada)

considerar a 15 depende del analista y del modelo

el modelo es aceptable

$t={n-2}$ es el cuantil

el valor esperado de y dado un valor especifigoc de X, $E[Y/X=x]$

para todos # banda beige
para un dato # banda azul

En base a los datos de regresi{on, vamos a calcular los intervalos de confianza con la función predict


x0 <-seq(min(pacientes$edad), max(pacientes$edad), length= 69)
datos <-data.frame(tension= x0)
pred.ip<-predict(regresion, datos, interval= "prediction",se.fit= TRUE, data = pacientes)
head(pred.ip$fit) # Muestra la primera parte de un objeto
matplot(x0, pred.ip$fit, type= "l", xlab= "Edad", ylab= "Tensión")
abline(regresion, col = 'blue')

Falta revisar las opciones de los comandos usados

# se debe copiar en texto la formula amtematica

SASS para investigación básica