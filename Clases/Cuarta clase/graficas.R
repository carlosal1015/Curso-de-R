library(JGR)
library(Deducer)
JGR()

# Ejemplo:
# grouped bar NIVEL FREC
# facets wrap FACTOR
# Resultado
library(XLConnect)
Libro1 <- readWorksheet(loadWorkbook('C:/Users/WIN7/Desktop/Libro1.xlsx'),sheet=1)

ggplot() +
   geom_bar(aes(y = ..count..,x = NIVEL,fill = FREC),data=Libro1,position = position_dodge()) +
   facet_wrap(facets = ~FACTOR)

# Ejemplo:
# boxplot fy FACTOR 
# Color: NIVEL RED
# Alfa: 0.2
# Resultado
ggplot() +
   geom_boxplot(aes(y = fy,x = FACTOR,colour = NIVEL),data=Libro1,fill = '#ff0000',alpha = 0.1008)


# EJemplo:
ggplot() +
   geom_boxplot(aes(y = fy,x = NIVEL),data=Libro1,colour = '#ff0000',fill = '#ffff00',alpha = 0.5) +
   geom_dotplot(aes(x = NIVEL,y = fy),data=Libro1,colour = '#ff0000',fill = '#00ffff',alpha = 0.5,binaxis = 'y',stackdir = 'center') +
   facet_wrap(facets = ~FACTOR)