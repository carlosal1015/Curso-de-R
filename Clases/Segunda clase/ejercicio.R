# Cuando usamos incorrectamente && en lugar de
# & para est tipo de casos, R
# simplemente evalúa los primeros resultados
# de los vectores l+ogicos e ignora el resto. En general
# && es pereferido por el control de flujo, es decir,
# el uso de los condicionales if o while
remove('x')
x <- rbinom(100,5,0.80)
x[(x>1)&(x<3)]