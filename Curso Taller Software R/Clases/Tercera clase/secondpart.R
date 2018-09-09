# Las hipótesis y las preguntas están en la investigación científica
# Instrumentos: Cuestionarios, entrevistas (focus groups)
# Empezar con las teorías
# En Europa hay físicos estadísticos.
# Debatir para ampliar el campo de conocimiento. Aprender de todo un poco.
# A la Estadística empieza con Descriptiva, para explorar datos o conocer.
# Estudiar el comportamiento de una población
# Las leyes son los modelos de probabilidad, una característicos de los datos pueed ser estudiada
# univariado conjuntos
# informe claro, politicas ublicas y estrategias
# metodo estadistico (nos estamos salteando)
# parametros, estimador(puntual o por intervalos, pruebas de hipotesis) Validacion
# frecuencia relativa es la probabilidad
# fisica cuantica, depende del q observa
# estadistica, depende del experimentador
# observable, tiene que ser medida
# estimación de medidas es cuantitativas
# z score, transformación estandar
# distribcuon de variables cualitativsas o cuantitavias
# rango: minimo, máximo.
# coeficiente de curtosis, coeficiente de asimetria
# medidas de posición: percentiles cuantiles
# se puede encontrar intervalos
# a través de su rango podemos relacionar variables cualtitivatias y cuantitativas
# simple o univariada, moda es el % más alto
# cruces en estadisticos
# multivariado, matriz de dispersión
# densidad es la forma o función, su modelo matemático
# probabilidad, porcentajes de casos que se acumula
# La media se distribuye normalmente. Si x es normal, la media es normal.
# Tarea: Revisar las características de la distribución normal.


x <- rnorm(10, mean=0, sd=1)
x
x <- data.frame(x)
x
x <- matrix(x)
x
# cómo se representa la siginificacnai : \alpha= 0.05, error de rechazar la hipotesis nula sabiendo que es verdadera.
# p valor es una probabilidad de un estadistico de prueba
# t-student
# xi cuadrado
# F
# bernoulli y binomial (discreta)
# F es el cociente de dos variables que se distrubuyen con una xi cuadrada


x.norm <- rnorm(500);x #Simulación de 500 datos normales
2*pt(-2.43, df = 13) #p-valor de dos colas de una t(13)
qf(0.99, 2,7) #Percentil 99 de una distribución F(2,7)


hist(x.norm)

# familia de distribuciones normales, normal estándar, solo así podemos tabular, tiene
# weibull usan los ingenieros electricos

# genero es cualittativo y lo convierte a factor

table(students$Gender)
x <-as.factor(1:5) # Convierte vectores en factores
table(x)


summary(quinua[2])
quinua <-transform(quinua, TGRANO=factor(TGRANO,
labels= c("Chico", "Mediano")))
summary(quinua[2])



load("students.rda")
load("quinua.rda")


table(quinua$TGRANO) # Frecuencias absolutas
cuadro1 <-table(quinua$TGRANO) # Convierte tabla en objeto
cuadro1
# En adelante nos podemos referir al objeto cuadro1 cada vez que queramos utilizar la tabla en valores absolutos de la variable TGRANO
cuadro1 / margin.table(cuadro1) # Frecuencias relativas
round(((cuadro1/margin.table(cuadro1))*100),2) # Tabla de frecuencia relativa en porcentajes y redondeada a dos dígitos
cumsum(round(((cuadro1/margin.table(cuadro1))*100),2)) # Frecuencia relativa acumulada


readgender <-table(students$City, students$Gender)
readgender

prop.table(readgender,1) # Proporciones fila
round(prop.table(readgender,1), 2) # Redondea propfila a 2 dígitos
round(100*prop.table(readgender,1), 2) # Redondea propfila 2 a dígitos (porcent.)
addmargins(round(prop.table(readgender,1), 2),2) # Redondea propfila a 2 dígitos
prop.table(readgender,2) # Proporciones columna
round(prop.table(readgender,2), 2) # Redondea propcol a 2 dígitos
round(100*prop.table(readgender,2), 2) # Redondea propcol 2 a dígitos (porcent.)
addmargins(round(prop.table(readgender,2), 2),1) # Redondeapropcola 2 dígitos
prop.table(readgender) # Proporciones totales
round(prop.table(readgender),2) # Proporciones totales redondeada
round(100*prop.table(readgender),2) # Proporciones totales redondeada


# Probar el resumen de variables continuas
# campo:tipo de datos, solo numérico.

x<-rnorm(100)
summary(x)


x <-rgamma(50,1,3)
summary(x); fivenum(x)
mean(x); median(x); quantile(x); quantile(x,c(0.35,0.9))
sd(x); var(x); range(x); IQR(x)
# Resumen con localización indexada
min(x); which.min(x); x[which.min(x)]; pmin(x[1:5],x[6:10])
max(x); which.max(x); x[which.max(x)]; pmax(x[4:8],x[2:6])

# indexada quiere decir posición

# REsumenes por grupos: indican variable categorica: sexo, provincia, cateogrial laboral
# Estadísticasdescriptivasporgruposusando--tapply--
mean <-tapply(students$SAT,students$Gender, mean) # Adicionarna.rm=TRUE para remover los valoresperdidosen la estimación
sd<-tapply(students$SAT,students$Gender, sd)
median <-tapply(students$SAT,students$Gender, median)
max <-tapply(students$SAT,students$Gender, max)
cbind(mean, median, sd, max) # Tomaunasecuenciade vectores, matrizo argumentosde marcosde datosy combinaporcolumnaso filas, respectivamente

# Saber si los datos son normales...
# curtosis 3 es normal
# varianza es muy alta es platocurtica o muy disperos

# Por que es 3 la curtosis.

x <-(0:65)/10; x
y <-sin(x); y
plot(x)
plot(x, y)
plot(x, y, main="Función Seno")
z <-cos(x)
windows() # Crea una ventana nueva
plot(x, z, main="Función Coseno")

plot(x, y, main="Seno", type="l")
plot(x, z, main="Coseno", lty=2, col="red", type="l")
plot(x, z, main="Coseno", lty=3, col="blue", type="l",
xlim=c(0, 2), ylab="cos(x)")

# Esto son generalidades del resumen. Practicar en casa y cuando hay problemas lo anotamos