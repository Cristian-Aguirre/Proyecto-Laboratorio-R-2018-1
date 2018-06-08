
# Nombre : Cristian Aguirre Janampa  20150058I
#Ejercicio N°1 : Muestra las operaciones sobre vectores en R

#Item (a):
# Almacenamos en un vector 
x<-seq(5, -11, by = -0.3 )
x

#Item (b)
# El mismo vector que (a) pero es orden opuesto
x<-seq(-11, 5, by = 0.3)
x

#Item (c)
# Una secuencia de numeros y ordenados en un vector
y<- rep(rep(c(-1, 3, -5, 7, -9), c(10, 10, 10, 10, 10)), 2)
sort(y)

#Item (d)
# Almacenando varios valores en un vector, verificamos que su tamaño es 20
z<-as.vector(c(seq(6, 12), rep(5.3, 3),-3, seq(102, length(y), length.out = 9)))
z
length(z)

