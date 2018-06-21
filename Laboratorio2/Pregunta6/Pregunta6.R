#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 6
#haciendo el uso de una funcion de la familia apply
#y tambien haciendo el uso de matrices y operaciones con sus elementos


#pregunta 6 seccion a

#datos del problema
matlist <- list(matrix(c(T,F,T,T),2,2),
                   matrix(c("a","c","b","z","p","q"),3,2),
                   matrix(1:8,2,4))
matlist
for(i in 1:length(matlist)){
   matlist[[i]] <- t(matlist[[i]])
   }
matlist

#creamos funcion metodo el cual recibe como parametro una lista X y nos devuelve la transpuesta de esta

metodo<-function(x){ #funcion metodo con parametro x
  return(t(x)) #retorna la transpuesta de X
}

lapply(matlist,metodo) #aplica lapply(retorna una lista con longitud de matlist) a matlist con la funcion metodo


#pregunta 6 seccion b

#funcion implicito1 que recibe como parametro un array x que obtiene todos los elementos
#de su diagonal y nos retorna una matriz formada por ellas

implicito1<-function(x){#funcion implicito 1 parametro array x
  resultado<-c() #vector resultado, donde se almacenara los elementos de la diagonal
  for(i in 1:3){ #bucle para recorrer todo el array
    resultado<-rbind(resultado,diag(x[,,2,i])) #almacenamos en resultado todos los elementos de la diagonal
  }
  t(resultado) #mostramos la matriz con la transpuesta del resultado
}

#funcion implicito2 que recibe como parametro un array x que obtiene las dimensiones
#de cada una de las tres matrices  formadas accediendo a la cuarta columna de cada matriz

implicito2<-function(x){#funcion implicito2 con parametro un array x
  resultado<-c() #vector resultado donde almacenaremos las dimensiones de la matriz
  resultado2<-c() #vector resultado 2 donde formaremos la matriz de dimensiones
  y<-0 #acumulador para la suma de elementos de cada fila
  respuesta<-c() # vector que tendra la suma de cada fila
  for(i in 1:3){ #bucle para obtener todas las dimensiones
    resultado<- dim(x[,,,i]) #almacenamos las dimensiones en resultado
    resultado2<- rbind(resultado2,resultado) #creamos un vector con todas las dimensiones
  }
  
  for(i in 1:nrow(resultado2)){ #bucle anidado para la suma de elementos de la fila de la matriz resultado2
    for(j in 1:ncol(resultado2)){
      y <- y+resultado2[j,i] #acumulador de la suma de elementos
    }
    respuesta[i]=y #almacenamos la suma en el vector respuesta
    y<-0 #volvemos el contador a 0
  }
  respuesta #mostramos el vector respuesta

}

qux <- array(96:1,dim=c(4,4,2,3)) #array qux

implicito1(qux) 

implicito2(qux)
