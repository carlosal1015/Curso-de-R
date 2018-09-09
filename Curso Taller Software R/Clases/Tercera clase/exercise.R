# En el análisis estadístico:
# Contexto >>>>> Particular
# Conocer cómo funciona.
# Qué procedimiento de un paquete.
# Proactivos
# Papel que juega la estadística
# Desde Descriptiva hacia la estadística inferencial

getwd() # Muestra el directorio de trabajo (wd)
setwd("F:/Clase_de_R_3") # Selecciona el directorio de trabajo de forma interactiva

download.file("http://dss.princeton.edu/training/students.xls",
"F:/Clase_de_R_3",
method="auto", quiet=FALSE, mode = "wb", cacheOK= TRUE)

students=read.csv("F:/Clase_de_R_3/students.csv", header=TRUE, sep=";")

fix(students)
a <- 2; a
# Para eliminar con el comando remove
save(students,file="F:/Clase_de_R_3/students.rda")

quinua=read.csv("F:/Clase_de_R_3/quinua.csv", header=TRUE, sep=";")
save(quinua,file="F:/Clase_de_R_3/quinua.rda")

# Cada archivo que se lee tiene correspondiente función

# No usar el dato porque puede ser muy extenso, es mejor usar fix(valor).


summary(quinua) # Proporciona estadísticas y frecuencias descriptivas básicas.
edit(quinua) # Abreel editor de datos
str(quinua) # Proporciona la estructura del conjunto de datos
length(quinua)# Muestrael número de variables que contienen datos
names(quinua) # Enumera variables en el conjunto de datos
head(quinua) # Lista las primeras 6 filas de conjunto de datos
head(quinua, n=10)# Primeras 10 filas de conjunto de datos
head(quinua, n= -10) # Todas las filas, pero las últimas 10
tail(quinua) # Últimas6 filas
tail(quinua, n=10) # Últimas10 filas
tail(quinua, n= -10) # Todas las filas, pero no las primeras 10
quinua[1:10, ] # Primeras10 filas
quinua[1:10,1:3] # Primeras 10 filas de datos de las 3 primeras variables


# En fix no se puede cambiar, pero sí en edit.
# El num es el tipo de dato

# Dos tipos:
# Definido por el sistema, NA, ., missing
# Definido por el usuario
# Tener cuidado con los valores extraviados o perdidos

students1 <-na.omit(students)


fix(students1)
students1[students1$SAT==1787,"SAT"] <-1800
students1[students1$Country=="Bulgaria","Country"] <-"US"

students1 <-students
fix(students1)
students1[students1$Country=="Bulgaria","Country"] <-"US"
fix(students1)

# Hemos reemplazado valores
library()
library(reshape)
# Hay que usar factores

#Ojo a attr, es lo que necesitamos


students$id<-seq(dim(students)[1])


levels(students$Major)
students$Major = with(students, reorder(Major,Read,mean))

# matrices, funciones, formulas



library(reshape)
quinua <-rename(quinua, c(TGRANO="Last"))
quinua<-rename(quinua, c(TGRANO="First"))
students <-rename(student, c(Student.Status="Status"))
students <-rename(students, c(Average.score..grade.="Score"))
students <-rename(students, c(Height..in.="Height"))
students <-rename(students, c(Newspaper.readership..times.wk.="Read"))

install.packages(car); library(car)


students$Age.rec<-recode(students$Age, "18:19='18to19';
20:29='20to29';
30:39='30to39'")

students$Age.rec<-as.factor(students$Age.rec)

datosimp <-data.frame(anyos=c(1.3,0.4,1.1,2.3,3.1,1.3),
tipo=c(2,3,3,1,3,1),edad=c(22,21,34,42,17,43),
sexo=c("H","M","H","H","M","H"))
attach(datosimp) # Creando listas o un data.frame

# Cualitativa to cuantitavia

ec<-recode(edad, "15:25='joven'; 26:65='adulto' ", as.factor.result=T)
sexo.cod<-recode(sexo, " 'H'=0 ; 'M'=1 ", as.factor.result=TRUE)


# ec es el factor que contiene

# edad es una variable cuantitaviva continua

# attach y dettach son de mucha utilidad

# Pare recodificar hay que usar la librería car.edad.final<-edad+ anyos# no afectaal data.frame


edad.final<-edad+ anyos# no afectaal data.frame, pues se crea un nuevo objeto

datosimp.1 <-transform(datosimp, edad.final= edad+anyos) # siafecta
# attach me permite alterar los datos, pero hay que tener cuidado en no renombrarlo.
# edad.final
# sin attach no lo cambiaría, sería un objeto más

# Es una variable cuantitativa
# Cómo está definida la función logaritmo en R?


quinua$LGPESO<-with(quinua, log(P_GRANO))
summary(quinua$LGPESO)
# seleccion no los 14 casos, sino las primeras 14 variables


# El signo -, excluye variables, veamos los siguientes objetos.


# Por un lado van las variables y por otro van las observaciones

install.packages("devtools")segmentar archivos, exploraciíon de archivos de datos, hemos visto lo princiapal