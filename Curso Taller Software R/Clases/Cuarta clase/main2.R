# Tablas anidas o en capas.
# La variable varía de acuerdo a una unidad de análisis.
# Queremos explicar el copmportamiento de la población
# Énfasis: Riesgo de error.
# Parámetros: media, varianza.
# $\mu$ es la media poblacional
# $\sigma$ cuadrado
# propoción es $\mathcal{P}$ o $\pi$.
# Refleja la misma estructura. Si es homogenea la poblacion, su muestra también lo será. Si la poblacion es heterogenea, su muestra lo será.

# Estimadores: $\bar{x}$ y $s$ cuadrado.
# Lo que se quiere es saber el comportamiento de la población
# En las técnicas de muestro (distribuciones muestrales) empieza la probabilidad. Empieza en $\mu$ y $\sigma$, medimos el nivel de confianza.

# Falta la validación, hemos estudiado estimación puntual. Ahora veremos por intervalo. Y la verificación de hipótesis con su teoría por detrás

# En un informe de investigación o técnico lo que nos importa son las conclusiones.

# En la muestra se obtuvo un 25%, 30%, 50%. Es un resultado parcial, necesitamos validar. Son significativos?
# Todos los grupos son iguales, provienen de la población, debe decir $H_1$

# Rechazar la $H_0$ es la hipótesis nula, sabiendo que es correcta.
# Todos los analistas usan el $p$ valor.
# Decisión: Es significativo o no
# Conclusión: A partir de los datos

# La distribucion chi cuadradado sigue una distribucion n-1 grados de libertad


# x minuscula es un valor dado fijo y arbitrario, discreto.
# Acumulada lleva $\le$

# Bernoulli es una sola vez, 0 o 1.
# Binomial es Bernoulli es repetido Bernoulli

# Lo que cambia es el error estandar y la estimacion

# Se usa la distribucion t: pcos datos y varianza desconodida
# cuantil $1-\frac{1}{2}$, se encuentra en tablas $\alpha$ nivel de significancia, error estandar $\sqrt{N}$. Se pueed demostrar

load("quinua.rda") # Es posible quitar la extensión

# Calcula la cota inferior del intervalo, llamándola ci
ci<-mean(quinua$P_GRANO)-qt(0.975,39)*sd(quinua$P_GRANO)/sqrt(40)
# Calcula la cota superior del intervalo, llamándola cs
cs<-mean(quinua$P_GRANO)+qt(0.975,39)*sd(quinua$P_GRANO)/sqrt(40)
# Agrupa en un vector la cota inferior y la cota superior, haciéndolas aparecer en la ventana de resultados
c(ci,cs)
# Y nos muestra el resultado.
# Leer https://es.wikipedia.org/wiki/Prueba_t_de_Student

# Ese 95% es de la muestra que seleccionó. Si el intervalo es grande, mayor dispersión. Lo que nos interesa es intervalo que contenga a la media.

Una muestra grande es más de 30
$z$ es el cuantil de una distribución normal.

# cuasivarianza entre la raiz cuadrado del número de datos
# Aprender el significado de la formula, desvios de la media de cada dato entre n-1. Por estimar una variable desconocido, estimar el par+ametro perdemos un grado de libertad
# por eso es n-1.
# Iris es 150. Podemos asumir que es una distribución normal

data(iris); attach(iris);hist(Petal.Width)
# Calcula la cota inferior del intervalo, llamándola ci
ci<-mean(Petal.Width)-qnorm(0.975)*sd(Petal.Width)/sqrt(150)
# Calcula la cota superior del intervalo, llamándola cs
cs<-mean(Petal.Width)+qnorm(0.975)*sd(Petal.Width)/sqrt(150)
c(ci,cs) # Agrupa en un vector la cota inferior y la cota superior

# Es una distribución bimodal.
# Hay que hallar la media para ver si hay mucha variacicón
# numero de nueves vacias: variable aleatoria
# probabilidad 21/300

# variable dicotómica podemos aproximar a la normal.
# hallar la varianza de la variable nueeces vacias en bolsas
# varianza: p*q, q=1-p
# p: proporcional muestra=21/300
# N: Número de la muestra

# Vamos a aplicar la fórmula para hallar el intervalo.

# Calcula la cota inferior del intervalo, llamándola ci
ci <-21/300-qnorm(0.975)*sqrt((21/300)*(1-21/300)/300)
# Calcula la cota superior del intervalo, llamándola cs
cs<-21/300+qnorm(0.975)*sqrt((21/300)*(1-21/300)/300)

# Agrupa en un vector la cota inferior y la cota superior, haciéndolas aparecer en la ventana de resultados
c(ci,cs)

# Muestras normales o muestras grandes
# El cuantil es de xi cuadrado con probabilidad 1-\alpha/2 con N-1 grados de libertad

# Calcula la cota inferior del intervalo, llamándola ci
ci <-149*var(Petal.Width)/qchisq(0.975,149)
# Calcula la cota superior del intervalo, llamándola cs
cs<-149*var(Petal.Width)/qchisq(0.025,149)
# Agrupa en un vector la cota inferior y la cota superior, haciéndolas aparecer en la ventana de resultados
c(ci,cs)
# El valor es para la probabilidad de éxito.

# Además, además de los estimadores puntuales se debe hacer los estimadores por interevalos, se debe mostrar el intervalo de confianza, es decir por el error.

# La mediana es más robusta que la media. No se ven afectados por los valores extremos.

# Estadístico es sinó
# Solo tenemos distribuciones que comparar en el caso de la mediana.
# Cuál es el error estándar para calcular la mediana, la mediana no es un estimador

# Debemos dar la definición operacional.

# Parámetro de la media de hombres y parámetro de la media de mujeres.
# Hipótesis estadísitca: es un procedimiento.

# Hip´tesis nula debe estar expresado en una igualdad.

# Hay más diversidad en contraste paramétrica.

# los par+ametros son: mu, sigma cuadrada
# nivel de significancia es el \alpha
# paso 3 viene de los estimadores de la clase pasada.
# paso4: región crótica

# la hipotesis nula es una presuncion de inocencia no se acepta, solo se, a una persona no lo declaro culpable, sino no se muestra su inocencia
# conclsusipn: no se acepta la hipotesis nuela: se muestra el nivel de siginificancia de tanto

# adelantar sinonio de rechazar

# contener aire cuando si es posible respirar, esto es un error
# el error más grave es el \alpha
# la proxima clase vemos los parametricos
# para variables cualitativas test de independeica chi cuadrado


# No rechazamos la hipotesis pues el pvalor es de 0.85, no existe una asociacion significativa entre las variables con un nivel de siginificanaia del 5%
# Falta ver otros test de

# Durará una hora y media, es una práctica calificada