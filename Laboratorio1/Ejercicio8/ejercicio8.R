#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 8
#haciendo uso de vectores, factores , dataframes y sus metodos



#pregunta 8 seccion a
personas <- c("Stan","Francine","Steve","Roger","Hayley","klaus") #vector personas
sexo <- factor(c("M","F","M","M","F","M"),levels = c("M","F")) #factor sexo con niveles M y F

puntuacion <-factor(c("Alto","Medio","Bajo","Alto","Medio","Medio"),
                    levels = c("Alto","Medio","Bajo")) #factor puntuacion con niveles Alto, Medio, Bajo

dframe <- data.frame(personas,sexo,puntuacion) #creamos el dataframe dframe con los factores sexo, puntuacion y el vector personas
dframe #mostramos el dataframe

edad <- c(41,41,15,1600,21,60) #vector edad

#pregunta 8 seccion b

dframe <- data.frame(dframe,edad) #agregamos el vector edad al dataframe dframe
dframe #mostramos dframe

#pregunta 8 seccion c

misdatos <- data.frame(personas,edad,sexo,puntuacion) #creamos el dataframe misdatos con los factores 
    #sexo, puntuacion y los vectores personas, edad
misdatos #mostramos el dataframe

#pregunta 8 seccion d

misdatos$edad.mon <- misdatos$edad*12 #agregamos la columna edad.mon al dataframe misdatos
 #la columna edad.mon contiene el vector edad multiplicado por 12


misdatos2 <- misdatos #guardamos el dataframe mis datos en el dataframe misdatos2
misdatos2$edad.mon <- NULL #borramos la columna edad.mon
misdatos2 #mostramos misdatos2

misdatosframe <- merge(misdatos2,dframe) #unimos los dataframes misdatos2 y dframe
misdatosframe #mostramos el nuevo dataframe
