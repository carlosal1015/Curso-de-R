
bdiris <- iris
head(bdiris)
bdiris <- bdiris[,c(1,2)]

layout(matrix(c(1,2,3,3), 2, 2, byrow = T))
layout.show(3)
plot(bdiris)
plot(bdiris, col="red")
plot(bdiris, col="blue")
