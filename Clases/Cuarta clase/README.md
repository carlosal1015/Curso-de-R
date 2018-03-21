No todas van a funcionar si se desconoce su uso, activaremos el borde y fondo, fill and background. El alpha es el nivel de transparencia de la fuente de imagen

x, color, fill, alpha. Y le damos clic en OK.

Luego le damos clic en editor de componentes.

Primero se seleccionar bar, y luego editar componentes.

ggplot2 es un lenguaje gráfico

Ejecutar, observar su código y estudiar su lenguaje, ggplot2 personalizado.

Luego le damos clic en Run.

Aparecerá en la consola de jaguar el código y usa la función `ggplot()`.
Siempre guarda el último gráfico almacenado.

El símbolo + está demás.
Global Options
Editing
Soft grap 
Display
Margin column80

Se puede graficar masivamente gráficos.

seleccione geom_bar + F1.

Creamos con plotbuilder, boxplot, arrastramos

FY con y
NIVEL con x


grap se arrastra hasta el final

añadir factor y darle ok.


Primero añadimos Box plot.

Dentro de la opción Mappings:

Y -> FY
X -> NIVEL

Colour: Elegimos un color.

Fill: Seleccionamos relleno.

Luego en Grouped dotplot

Group -> Nivel
Variable -> FY

En Facets elegimos wrap

Agregamos FACTOR.


Ahora instalamos RCmdr

install.packages("Rcmdr")

ggplot2 no usa plot.

xlim es un vector de dos elementos
ylim es otro vector de dos elementos.

Hay que familiarizarse con el código.


Todo objeto que se lea es un dataframe.


Click en visualizar conjunto de datos dentro de R commander.


Ventajas y desventajas es que se puede hacer muy personalizado.

Cambiar etiquetas, etc, etc, etc. Pero no tiene la resolución de ggplot2.


R commander genera el código y te lo envía a Rstudio.


Modificar xyplot por plot.

Cómo crear y almacenar imágenes y 

```R
ip <- as.data.frame(installed.packages()[,c(1,3:4)])
rown>
rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]> print(ip,row.names=FALSE)
```