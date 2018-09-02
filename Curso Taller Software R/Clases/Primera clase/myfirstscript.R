# Esta es la ventana del editor, si elegimos en ventanas y dividir pantalla, el editor aparecerá en la parte superior.
# La consola sirve para ejecutar un comando.
# demo() # Aparecen los paquetes de R
# glm es el modelo lineal generalizado que se usa en modelos no lineales.
# Se usa para variable dependenties, dicotómicas para caulitativs.
# lm es el método de estimación, máximo verosimilitud.
# método de mínimos cuadrados y el método de máxima verosimilitud, buscar sus supuestos.
# nlm es para regresión no lineal, smooth quizá se use para series de tiempo
# El lenguaje de programación está en C y Fortran.
# Escribiremos aquí
2+2
# y a continuación pulsamos Ctrl+R o desde el ícono Correr línea o seleccionar
# Si es una solo comando podemos usar la consola, pero si es una rutina de trabajo podemos usar el editor.
# Más adelante veremos arreglos y matrices.
# Al final debe terminar en paréntesis porque es una función, no debe acabar en llaves.

log({(3+2)*5}+6)
# Equivale a log({(3+2)*5}+6) o log({{3+2}*5}+6)
v <-c(2,1,3,4)
v
# nos muestra el valor de dicho vector
w<-c(0,2,-2,1)
#crea un vector llamado w
w[3]
# noa muestra la tercera componente de w

2*v-3*w+2
# multiplica componente a componente
w/v
# divide componente a componente
v^3
# eleva al cubo cada componente
v^w
# eleva cada componente de v a su correspondiente componente de w

sqrt(w)
# produce un warning por pedir que haga la raiz de un negativo
vw<- c(v,w)
# une los dos vectores y los almacena en uno nuevo vw
vw
# muestra el resultado de vw
vwa <- c(vw,6)
# une otra componente
vwa/v
# da un warning pues ambos vectores no tienen el mismo número de componentes. Pero, qué hace?
# vuelve a repetir nuevamente
# du, ado stata
# Lenguaje a orientado a objetos y la lectura de datos
