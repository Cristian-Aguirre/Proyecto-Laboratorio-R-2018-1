#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 7
#haciendo uso de vectores,matrices elevandolos a cierta potencia y seleccionando aquellos
#elementos que sean diferente de inf y -inf

#pregunta 7 seccion a
f1<- c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968, 8133) #vector f1
f1 <- f1^75 #se eleva el vector a la potencia 75
f1 <- f1[f1!=Inf] #se selecciona aquellos elementos diferentes de infinito
f1 <- f1[f1!=-Inf] #se selecciona aquellos elementos diferentes de -infinito
f1 #mostramos el vector

#pregunta 7 seccion b

datos <- c(77875.40,27551.45,23764.30,-36478.88,-35466.25,
           -73333.85,36599.69,-70585.69,-39803.81,55976.34,
           76694.82,47032.00) #vector datos

varMatriz <- matrix(datos,3,4,byrow = T) #se genera la matriz con el vector datos
varMatriz #mostramos la matriz
(varMatriz^65)/Inf #elevamos la matriz a la potencia de 65 y lo dividimos entre infinito
varMatriz^67 + Inf #elevamos la matriz a la potencia de 67 y le sumamos infinito
(varMatriz^67 + Inf)[!is.nan(varMatriz^67 + Inf)] #seleccionamos aquellos elementos diferentes de nan
varMatriz^67 #elevamos la matriz a la potencia de 67
(varMatriz^67)[varMatriz^67!= -Inf] #elevamos la matriz a la potencia de 67 y mostramos aquellos elementos diferentes de -infinito
y <- varMatriz^67 #guardamos en y la matriz elevada a la potencia de 67
x <- y[y !=-Inf] #seleccionamos aquellos elementos diferentes de -infinito
x <- x[x!= Inf] #seleccionamos aquellos elementos diferentes de infinito
x #mostramos el resultado

#pregunta 7 seccion c

f2 <- c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA) #creamos el vector f2
length(f2) #obtenemos el tamaño de f2 y es 8
which(x=is.na(x=f2)) #resulta en 4 y 8
is.null(x=f2) #nos proporciona un FALSE
