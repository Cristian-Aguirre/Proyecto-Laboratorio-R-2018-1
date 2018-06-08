
# Nombre : Cristian Aguirre Janampa  20150058I
#Ejercicio N°1 : Muestra las operaciones sobre vectores en R

#Item (a):
# Almacenamos en un vector que va desde 5 a -11 con "pasos" de 0.3. Usamos el comando seq 
x<-seq(5, -11, by = -0.3 )
x	# Mostramos el vector para verificar que tenemos lo deseado

#Item (b)
# El mismo vector que (a) pero es en orden opuesto, usando el comando seq
x<-seq(-11, 5, by = 0.3)
x	# Mostramos el vector para comprobar que es el deseado

#Item (c)
# Una secuencia de numeros y ordenados en un vector. 
# Usamos el comando rep para repetir numeros y dentro de rep, otro comando rep para repetir numeros dentro del vecor y 
y<- rep(rep(c(-1, 3, -5, 7, -9), c(10, 10, 10, 10, 10)), 2)
sort(y)	#Con el comando sort, ordenamos el vector "y" y nos muestra el vector

#Item (d)
# Almacenando varios valores en un vector, verificamos que su tamaño es 20
# Almacenamos los valores que nos dan como datos, para esto tenemos que usar comandos seq y rep y usar
# los datos obtenidos del item anterior
z<-as.vector(c(seq(6, 12), rep(5.3, 3),-3, seq(102, length(y), length.out = 9)))
z
length(z)	# Con el comando length, mostramos el tamaño del vector "z"

