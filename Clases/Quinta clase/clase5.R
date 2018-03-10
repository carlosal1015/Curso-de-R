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