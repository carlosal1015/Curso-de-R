# Extra: Crear una ventana con un botón que imprima en la consola de R la expresión: ¡Te amo Perú!

library(tcltk)
tt <- tktoplevel()
label.widget <- tklabel(tt, text = "Hello, World!")
button.widget <- tkbutton(tt, text = "Push",command = function()cat("¡Te amo Perú!\n"))
tkpack(label.widget, button.widget)