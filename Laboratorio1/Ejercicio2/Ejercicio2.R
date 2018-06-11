# Nombre: Jesus Angel Condor Torres
# Respuesta 2.a: El codigo muestra un almacenamento de valores en una matriz 
# ordenados por filas.

A <- matrix(data = c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5), nrow = 4, ncol = 2, 
            byrow = TRUE) # Iniciamos nuestra matriz de 4 x 2 y lo asignamos en A 
A # Mostramos la matriz A por consola

# Respuesta 2.b: El codigo muestra que al eliminar una fila y mostrar la dimension
# de la nueva matriz.
B <- A[-1,] # Eliminamos la primera fila y lo asignamos en B
B # Mostramos por consola el el resultado
dim(B) # Nos muestra por consola la dimension de la matriz B

# Respuesta 2.c: El codigo muestra una ordenacion de menor a mayor en la 2 columna
# de la matriz A

A[,2] <- sort(A[,2]) # Ordena de menor a mayor en la segunda columna de A
A # Mostramos por consola el ordenamiento de la 2 columna de la matriz A

# Respuesta 2.d: El codigo muestra que pasa si se elimina una fila y una columna a
# la vez

ejemplo <- A[-4,-1] # Eliminamos la 4 fila y la primera columna
ejemplo # Muestra por consola el resultado como si fuera un vector, arreglando ese
C <- matrix(A[-4,-1]) # inconveniente utilizaremos la funcion matrix
C # Mostramos por consola el resultado la cual es diferente a ejemplo

# Respuesta 2.e: El codigo almacena los valores de la parte inferior de la matriz 
# hallada en el item c

D <- matrix(A[c(-1,-2),], nrow = 2, ncol = 2) # Eliminamos la primera fila y la
D # segunda columna de A y los elementos que quedan lo almacenamos en una matriz
# de dimension 2 x 2, finalmente mostramos por consola el resultado 

# Respuesta 2.f: El codigo muestra la mitad de los valores de la matriz hallada en
# el item c

E <- A # Asignamos a E los valores de la matriz A
E[1,1] <- -1/2 * D[2,2] # Asignamos al indice E[1,1] el valor de -(1/2)*(8.2)
E[1,2] <- -1/2 * D[2,2] # Asignamos al indice E[1,2] el valor de -(1/2)*(8.2)
E[4,1] <- -1/2 * D[1,1] # Asignamos al indice E[4,1] el valor de -(1/2)*(3.2)
E[4,2] <- -1/2 * D[1,1] # Asignamos al indice E[4,2] el valor de -(1/2)*(3.2)
E # Mostramos por consola el resultado final

# Respuesta 2.g: El codigo muestra la verificacion de la operacion A^-1.A - I 
# sobre la matriz A, la cual  resulta matriz nula

A <- matrix(c(2,0,0,0,0,3,0,0,0,0,5,0,0,0,0,-1), ncol = 4) # Iniciamos nuestra 
# matriz A diagonal de 4 x 4
# otra forma  de asignar: A <- diag(c(2,3,5,-1))
A # Mostramos por consola nueva matriz A
I <- matrix(c(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1), ncol = 4)
I # Muestra por consola la matriz identidad de 4 x 4
matriz_final <- solve(A)%*%A -I # Asigna a matriz_final la operaciones de 
matriz_final # multiplicacion de matrices (Inversa de A (solve) por A) y 
# finalmente restarlo con la matriz identidad lo cual debe mostrar
# por consola la matriz nula