library(Rcmdr)

attach(bd)
Y <- bd$Y
TEMP <- bd$TEMP

Y = TEMP * 0.0031074

Y1 = 80 * 0.0031074; Y1

TEMP[31] <- 80
Y[31] <- Y1

Y
TEMP
bd1 <- data.frame(Y, TEMP)

# cbind muestra los vectores como columnas
# Kas variables P y TEMP 
# El error aleatorio aparece despu[es de construir el modelo
# # Residual es el error
# # Siempre deseamos quje el error sea cercano a 0.
# beta_0$ $ <- <- <- 
# BETA _2
# CADA P VALOR EST[A ASOCIADO A UNA PRUEBA DE HIPOTESIS]
# 
# HIPOTESIS NULA QUE SEA 0
# HIPOTESIS NO NULA
# 60 % ed la varicaci[on ] de mi variable Y dependiente, es explicado por las variables restantes es explicado por la variable T.
# r cuadrado ajustado se usa para mas de una variable independientes.
# es de utilidad cuando se tiene dos o mas variables independientes.
# 
# cuando realizemos modelos con un grupo grande, siempre el r ccuadrado va a alterarse por el numero de variables y siempre aujmenta, mientrasd mas variables ingrese, mayor es el r cuadrad
# # el r cuadrado se infla cuando uso muchas variables y el r cuadrado ajustado lo reduce
# notese que el r cuadrado ajustado es menor que el r cuadrado
# 
# f statistic es una prueba de , todos los betas son iguales a 0
# la prueba t si incluye a beta0
# la prueba f incluye desde beta1 hasta beta k
# 
#  0.00000047892 la prueba t es la misma con una sola variable.
#  
#  falta los supuestos del error
#  es necesario que se cumple la bonda de ajuste y la adecuacion del modelo
#  falta probar que el error sea el correcto
#  con la bondad de ajuste se puede caracterizar y los investigadroes hasta allli usualmente lo usan
#  
#  el supuesto del modelo est'a sujeto al error
#  
#  Se grafican los cuartiles observados 1 vs los cuartiles teoricos
#  
#  
#  la grafica 2 nos da un supuesto cumplido.
#  la grafica 1 nos dice que la varianza es constante, se ve como una franjita.
#  Cuando se ve la forma de embudo, la varianza no se seria constante
#  en la grafica 3, scale location (30, 7, 6).
#  en la grafica 4 residuals vs leverage. An[alisis de influencia dbbeta]