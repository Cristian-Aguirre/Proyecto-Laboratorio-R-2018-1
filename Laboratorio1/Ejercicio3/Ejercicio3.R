# Nombre: Jesus Angel Condor Torres
# Respuesta 3.a: El codigo muestra 2 vectores, uno sobre el genero (masculino M o 
# femenino F) y el otro sobre el nombre de los partidos politicos

sexo <- c("F","M","M","M","F","F","F","M","M","M","M","F","M","F","F","F","M","M",
          "M","M")#Creamos el vector de sexo
cat("El vector sexo es:")
sexo#Mostramos el vector sexo por consola
partido <- c("Laboral","Nacional","Nacional","Laboral","Nacional","Verdes",
             "Nacional","Nacional","Verdes","Otros","Verdes","Laboral","Nacional"
             ,"Nacional","Laboral","Laboral","Nacional","Nacional","Laboral","Otros")
# Arriba estamos creando el vector partido y en la linea de abajo mostramos por 
# consola el vector partido
cat("El vector partido es:")
partido

# Respuesta 3.b: Procederemos a convertir en factores los vectores  creados en el 
# item a

Sexo <- factor(sexo, ordered = TRUE) # convertimos en factor el vector sexo
Sexo # Mostramos por consola el factor Sexo
Partido <- factor(partido, ordered = TRUE)#convertimos en factor el vector partido
Partido # Mostramos por consola el factor Partido
unclass(Sexo) # Muestra las caracterisiticas del factor sexo
unclass(Partido) # Muestra las caracteristicas del factor Partido
# Respondiendo la pregunta:
# R ordena los levels por orden alfabetico de la primera letra de la palabra y en
# el caso de que sean numeros sera por orden creciente de la primera cifra.
# Cuando una pone la funcion ordered por consola sale el signo "<" entre cada
# elemento del factor.

#Respuesta 3.c: El codigo muestra factores bajo ciertas condiciones lo siguiente
#Devolveremos el factor de los partidos escogidos por hombres
a <- sexo == "M" #asignamos "a" para el cual considera M (masculino) = TRUE de la 
#cadena sexo
a # Observamos lo sucedido
print("Los partidos escogidos por hombres son:")
Partido[a == TRUE]#El factorPartido muestra los partidos que prefieren los hombres
#con la condicion de "a" sea TRUE
#Otra forma de mostrar por consola los partidos que prefieren los hombres
for(i in 1:20){
  if( "M" == sexo[i]) print((partido)[i] )}#aqui se utilizo vectores

#Ahora mostraremos el genero de las personas que simpatizan con  partido Nacional
b <- partido == "Nacional"#Asignamos "b" para el cual "Nacional" = TRUE de la 
#cadena partido
b#observamos lo sucedido con b
print("El genero de las personas que simpatizan con el partido Nacional son:")
Sexo[b == TRUE]#El factor Sexo muestra por consola las personas que simpatizan con
#el partido nacional.

#Respuesta 3.d: El codigo muestra concatenacion de cadenas y operaciones sobre los
#factores.
#Concatenamos las cadenas partido y sexo agregandole 6 elementos mas a cada uno 
partido <- c(partido,"Nacional","Maori","Maori","Laboral","Verdes","Laboral")
sexo <- c(sexo,"M","M","F","F","F","M")

#Ahora definimos nuestros siguientes factores
Partido <- factor(partido)#Inicializo el factor Partido
Sexo <- factor(sexo)#Inicializa el factor Sexo
NivelDeConfianza <- factor(c("Alto","Moderado","Bajo","Alto","Moderado","Alto",
                             "Moderado","Bajo","Moderado","Moderado","Moderado",
                             "Moderado","Moderado","Moderado","Moderado",
                             "Moderado","Moderado","Moderado","Moderado","Bajo",
                             "Bajo","Moderado","Alto","Bajo","Moderado","Bajo"))
#Lineas arriba, inicializamos el factor Nivel de confianza con niveles alto, bajo 
#y moderado
partido#Observamos los resultados de la concatenacion de partido mas 6 atributos
NivelDeConfianza#Observamos el factor creado
m <- partido == "Laboral"#asignamos m para verficar a las personas que creen que
#simpatizan con el partido laboral
# m # tiene un valor logico TRUE
n <- partido == "Nacional"#asignamos n para verificar las personas que simpatizan
#con el partido nacional
# n # tiene un valor logico TRUE
cat("El nivel de confianza de las personas con el partido laboral es:")
NivelDeConfianza[m == TRUE]#Muestra el nivel de confianza de los simpatizantes del
#partido laboral
cat("El nivel de confianza de las personas con el partido nacional es:")
NivelDeConfianza[n == TRUE]#Muestra el nivel de confianza de los simpatizantes del
#partido nacional.
#En el primer caso la mayoria de las personas que simpatizan con el partido 
#laboral opinan que los integrantes del partido laborista tienen una moderada 
#posibilidad de que alcancen escaños en el parlamento. Mientras tanto los que 
#simpatizan con el partido nacional opinan que tienen una moderada posibilidad de
#alcanzar un escaño en el parlamento.