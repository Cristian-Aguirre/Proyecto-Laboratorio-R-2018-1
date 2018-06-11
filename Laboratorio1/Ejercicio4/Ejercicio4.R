# Nombre: Jesus Angel Condor Torres
# Respuesta 4.a: El codigo muestra como se define explicitamente e implicitamente
# de como se puede definir un objeto

f1 <- array(data = 1:36,dim = c(3,3,4))
f1 # Muestra por consola la asigancion de array de f1
bar <- as.vector(f1)
bar #Muestra por consola la asignacion de bar como un vector de enteros
baz <- as.character(bar)
baz #Muestra por consola la asignacion de baz como una cadena de caracteres
qux <- as.factor(baz)
qux #Muestra por consola la asignacion de qux como un factor
quux <- bar+c(-0.1,0.1)
quux #Muestra por consola la asignacion de quxx como una suma de vectores
# Ahora mostramos las clases de cada una de los objetos 
class(f1) # Muestra la clase de f1 la cual es un array
# Este array esta definido explicitamente ya que define su dimension
# y sus elementos
class(bar)# Muestra la clase de bar la cual es un vector de enteros
# Este vector de enteros esta definido explicitamente ya que solo 
# convirtio un array en un vector mediante la funcion as.vector 
class(baz)# Muestra la clase de baz la cual es una cadena de caracteres
# Esta cadena esta definido explicitamente ya que solo convierte un
# un vector en una cadena de caracteres mediante la funcion as.character
class(qux)# Muestra la clase de qux la cual es un factor
# Este factor esta definido explicitamente ya que solo convierte una
# cadena de caracteres en un factor mediante la funcion as.factor
class(quux) # Muestra la clase de quux la cual es numeric (numero real)
# Este vector numerico esta definido implicitamente ya que quxx esta
# definido por una suma entre un vector de enteros y un vector 
# numerico y al sumar el resultado son decimales los cuales son 
# definidos como numericos

# Respuesta 4.b: El codigo muestra el resultado de sumar is.numeric e is.integer
# de los objetos f1, bar, baz, qux y quxx.
is.numeric(quux)
is.integer(quux)
resultado <- is.numeric(f1) + is.integer(f1)
resultado # Muestra el resultado de operar is.numeric(f1) + is.integer(f1)
resultado <- is.numeric(bar) + is.integer(bar)
resultado # Muestra el resultado de operar is.numeric(bar) + is.integer(bar)
resultado <- is.numeric(baz) + is.integer(baz)
resultado # Muestra el resultado de operar is.numeric(baz) + is.integer(baz)
resultado <- is.numeric(qux) + is.integer(qux)
resultado # Muestra el resultado de operar is.numeric(qux) + is.integer(qux)
resultado <- is.numeric(quux) + is.integer(quux)
resultado # Muestra el resultado de operar is.numeric(quux) + is.integer(quux)

# Respuesta 4.c: El codigo muestra la operaciones sobre una matriz y volverlo un 
# dataframe  haciendo una coercion sobre una columna
A <- matrix(c(34,23,33,42,41,0,1,1,0,0,1,2,0,1,2), nrow = 5)# Creamos la matriz A
A # Observamos la matriz por consola
df.A <- as.data.frame(A) # Convertimos nuestra matriz A en un dataframe 
colnames(df.A) <- c("col.1","col.2","col.3") # Asignamos el nombre de columnas 
rownames(df.A) <- c("fila.1","fila.2","fila.3","fila.4","fila.5")# Nombre filas
df.A # Observamos por consola el dataframe df.A
df.A[2] # Observamos la columna 2 del dataframe
valorLogico <- as.logical(df.A[,2])# Coercionamos la columna 2 a valores logicos
valorLogico # Observamos el resultado por consola
vfactor <- as.factor(df.A[,3]) # Coercionamos la columna 3 a un factor
vfactor # Observamos el resultado por consola
