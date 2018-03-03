install.packages("JGR")
install.packages("Deducer")
install.packages("XLConnect")
install.packages("DeducerExtras")

library(JGR)
library(Deducer)
library(XLConnect)
library(DeducerExtras)
JGR()
# No es necesario incluir comillas al usar library
bd <- readWorksheet(loadWorkbook('C:/Users/LAB 1/Desktop/RClase/Libro1.xlsx'),sheet=1)
ggplot() +
  geom_bar(aes(y = ..count..,x = as.factor(FREC)),data=bd,colour = '#ff0000',fill = '#ff9900',alpha = 0.5)

# Quitar variables

bd1 <- bd[,c(6,7)]
head(bd1)

fig1 <- plot(bd1, type="p", main="Tìtulo principal", xlab="titulo x", ylab="tituloy", col="red")
fig2 <- plot(bd1, type="l", main="Tìtulo principal", xlab="titulo x", ylab="tituloy", col="red")
fig3 <- plot(bd1, type="s", main="Tìtulo principal", xlab="titulo x", ylab="tituloy", col="red")


library(Rcmdr)

par(mfrow = c(2,2))


