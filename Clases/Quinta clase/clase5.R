# Cada prueba estadística está sujeta a una hipótesis.
# Hay dos tipos de modelos: discretos y continuos.
# Nominal, no depende de sus caracterísitcas, no se guarda un orden entre sus categorías.
obs <- c(103, 77, 89, 108, 99, 124)
esp <- c(100,100, 100, 100, 100, 100)

#esp <- rep(100,6)

tba = chisq.test(obs, p=esp, rescale.p = T); tba
# Las pruebas estad'isiticas est'an dados pro funciones estadisticas en librerias.

tba$obs

tba$exp

tba$res

Cuando lleva `$` es porque lo que precede es una lista.
Las pruebas no paramátricas están asociadas a una hipotesis. Vamos a trabajar con el p-valor.
Una forma mas simple de comprender y observar una hipostesis es usar el p.valor, es una formageneral de contrastar una prueba de hipotesis, ssin importar lka hipotesis inical, hay que conocer la hipotesis planteada.

¿Cómo trabaja el p-valor?
  
Se debe de conocer la  hipótesis nula y la hipotesis alternativa. Y aplicar la regla

Si el p-valor es menor que $\alpha$.

Pero hay que conocer la hipótesis nula.

La hipótesis nula $H_0$ es que los datos siguen una distribución determinada y la hipótesis alternativa $H_1$ es que los datos no siguen una distribución determinada.

Nos está resultando que no es el valor esperado

El dado estaba trucado y ahora nos preguntamos, cuál es el valor al cual estuvo trucado.

La variable es **anotaciones** y la frecuencia es el número de veces.

x <- 0:7; x
f <- c(35,99,104,110,62,25,10,3); f

lambda <- sum(x*f)/sum(f)
esp <- dpois(x, lambda); esp

tba <- chisq.test(f, p=esp, rescale.p = T); tba # Pedimos los resultados de la variable
tba$obs
tba$exp
tba$res

set.seed(100) # Se puede usar cualquier número interno. En nuestro ejemplo es 100.
x <- rnorm(50)
y <- runif(30)

hist(x)
hist(y)


# Para qué sirve el D.

ks.test(x,y) # Prueba de Kolmogorov Smirnov.



# Valor semilla
set.seed(100)

# Datos
x <- rnorm(50)

# Prueba
ks.test(x, pnorm, mean(x), sd(x))


tabla <- matrix(c(63, 21, 4, 2), byrow = TRUE, nrow = 2, ncol = 2); tabla

colnames(tabla) <- c("Diestro", "Surdo")
rownames(tabla) <- c("Hombre", "Mujer")

tabla

names(dimnames(tabla)) <- c("Género", "DZ")

tabla

mc <- mcnemar.test(tabla, correct = FALSE); mc


library(BSDA)
# Prueba del signo para 1 muestra
x1<-c(1.5,2.2,0.9,1.3,2.0,1.6,1.8,1.5,2.0,1.2,1.7)
BSDA::SIGN.test(x1, md = 1.8, alternative = "two.sided", conf.level =0.95)

library(BSDA)
#Prueba del signo para 2 muestras relacionadas
cin<-c(4.2,4.7,6.6,7.0,6.7,4.5,5.7,6.0)
rad<-c(4.1,4.9,6.2,6.9,6.8,4.4,5.7,5.8)
SIGN.test(cin,rad, md = 0, alternative = "two.sided", conf.level = 0.95)




x <- c(0.80, 0.83, 1.89, 1.04, 1.45, 1.38, 1.91, 1.64, 0.73,1.46)
y <- c(1.15, 0.88, 0.90, 0.74, 1.21)

wilcox.test(x, y, alternative = "t")
# Pueden provenir de la misma población

wilcox.test(x, y, alternative = "l")
# Hipótesis:
# $H_0\colon x=<y$
# $H_!\colonx>y$
# p-value: 0.8968
# entonces x>=y

wilcox.test(x, y, alternative = "g")
# Hipótesis:
# $H_0\colon x=<y$
# $H_!\colonx>y$
# p-value= 0.1272
# entonces x<=y
Una hipótesis puede plantearse de tres maneras diferentes, unilaterales, bilaterales.


library(RVAideMemoire)
# prueba de Cochran 
res<-c(1,1,1,1,1,1,0,1,0,1,1,0,0,0,0,1,1,1,1,1,1,1,1,0,
       0,0,1,0,1,0,1,1,1,1,1,1)
sportsman=gl(3,1,36,labels=LETTERS[1:3])
game<-gl(12,3,labels=letters[1:12])
mat<-cbind(res,sportsman,game)
mat
cochran.qtest(res~sportsman|game)
doble factor, variable de bloqueo.

Como no es menor que alpha, no se rechaza la hipótesis nula. (No hay diferencia en las proporciones, hay igualdad en las proporciones). En realidad los grupos son iguales al menos en la variable en que se examina.

Peso vs notas (varones oD mujeres)

Prueba de suma de rango de Friedmann
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

Hemos visto chi cuadrado para bondad de ajuste, también independecia de asociacion, distribuciopn, homogeneidad.


Variable dicotómica (fuma/no fuma; ausencia/presencia).

Cuando tenemos variables dicotomicas donde se aplioca chi cuadrado menor a 50 valores, se debe de apliocar la pruena de yates.


visión <- matrix(c(442,514,38,6), nrow = 2, byrow = T); visión
dimnames(visión) <- list(c("normal", "daltónico"), c("Masculino", "Femenino")); visión

chisq.test(visión, correct = F)  # Sin correción

chisq.test(visión, correct = T) # Con correción.

Se rechaza la hipotesis nula, entonces son asocidads las variables.


independintes hiposteis nula
asisciadas hipotesis alterna