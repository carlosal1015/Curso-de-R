x = c(1,3,5,7,9)
y = c(2,3,5,7,11,13)

x + 1 # Muestra un vector con cada elemento aumentado en 1.
y * 2 # Muestra otro vector con cada elemento multiplicado por 2.
length(x); length(y) # Muestra la cantidad de columnas del vector x. Análogamente con y.
x + y # Muestra un vector con cada elemento la suma de los elemento de x e y.
sum(x>5); sum(x[x>5])# Primero obtiene como valor lógico y luego lo suma. En el otro caso suma 7 y 9
sum(x>5|x<3)# "|" se lee o "&" se lee y.
y[3]
y[-3]
y[x]
y[y>=7]

# Con el operador 'as.numeric()'

# Cuando es corchete, se llama a una matriz, es un arreglo numérico indexado, se le puede llamar a su posición.

