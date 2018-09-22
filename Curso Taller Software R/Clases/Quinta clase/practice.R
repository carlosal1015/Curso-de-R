# Inicio
setwd("D:/Clase_de_R_5")
load("algas.RData")
summary(algas)
attach(algas)

x_mxPH <- c(1:length(mxPH)); x_mxPH
x_NO3 <- c(1:length(NO3)); x_NO3
x_NH4 <- c(1:length(NH4)); x_NH4
x_oPO4 <- c(1:length(oPO4)); x_oPO4
x_Chla <- c(1:length(mxPH)); x_Chla

plot(x_mxPH, mxPH, main="Valor máximo de pH")
plot(x_NO3, NO3, main="Valor medio de Nitratos")
plot(x_NH4, NH4, main="Valor medio de amonio")
plot(x_oPO4, oPO4, main="Media del ortofosfato")
plot(x_Chla, Chla, main="Media de clorofila")

media_mxPH <- mean(mxPH); media_MxPH
media_NO3 <- mean(algas$NO3); media_NO3
media_NH4 <- mean(algas$NH4); media_NH4
media_oPO4 <- mean(algas$oPO4); media_oPO4
media_Chla <- mean(algas$Chla); media_Chla

v1 <- is.na(x_mxPH)
v2 <- is.na(x_NO3)
v3 <- is.na(x_NH4)
v4 <- is.na(x_oPO4)
v5 <- (x_Chla)


season
