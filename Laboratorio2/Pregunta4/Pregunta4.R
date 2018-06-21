#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 4
#donde se hace uso de vectores, matrices y operaciones entre sus elementos
#multiplicacion, busqueda de elementos etc


#pregunta 4 seccion a
loopvec1 <- 5:7 #vector loopvec1 = (5,6,7)
loopvec2 <- 9:6 #vector loopvec2 = (9,8,7,6)
mat1 <- matrix(NA,length(loopvec1),length(loopvec2)) #matriz mat1 de 3x4 con elementos NA

#bucle anidado dado en el problema
for(i in 1:length(loopvec1)){
  for(j in 1:length(loopvec2)){
    mat1[i,j] <- loopvec1[i]*loopvec2[j] #se llenan los elementos de mat1[i,j] con la multiplicacion de loopvec1[i]*loopvec2[j]
   }
}
mat1  #mostramos la matriz mat1


y1<-matrix(nrow=3,ncol=4,loopvec1) #creamos una matriz y1 de 3x4 que contiene los elementos de loopvec1


y2<-matrix(nrow=4,ncol=3,loopvec2) #creamos una matriz y2 de 3x4 que contiene los elementos de loopvec2



for(i in 1:3){ #bucle simple que va de 1 a 3
  mat1[i,]=y1[i,]*y2[,i] #la fila i de mat1 se llena con el producto de la i-esima fila de y1 con la i-esima columna de y2
}
mat1 #mostramos la matriz mat1




#pregunta 4 seccion b
cadena1<-"Homer" #cadena
switch(EXPR=cadena1,Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90, NA) #cambia la expresion de una cadena de acuerdo a los parametros dados por ejemplo homer lo reemplaza por 12

#creamos la funcion prueba que recibe un parametro vector, el cual devuelve un vector
#con los elementos cambiados deacuerdo a los parametros de switch()

prueba<-function(vector){
  devolver=c(NA,length(vector)) #devolver es un vector de elementos NA con longitud de vector
  for(i in 1:length(vector)){ #bucle para recorrer todo el vector 
    devolver[i]=switch(EXPR=vector[i],Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90, NA) #se analiza cada elemento y si esta en switch cambia su valor en caso contrario se cambia por NA
  }
  
  devolver <- devolver[!is.na(devolver)] #solo tomamos los elementos diferentes de NA
  devolver #mostramos el vector
}


cadena <- c("Peter","Homer","Lois","Stewie","Maggie","Bart") #vector cadena
prueba(cadena) #invocamos la funcion con el vector cadena y nos devuelve el resultado= c(12 90 56)

#pregunta 4 seccion c

#creamos la funcion buscamatrices lo cual busca matrices dentro de una lista
buscamatrices<-function(x){ #funcion con parametro x que es una lista
  contador <- 0 #contador que nos dira cuantas matrices hay en la lista
  datos <- list() #lista datos donde se almacenaran los elementos de la lista x
  for(i in 1:length(x)){ #bucle de primer nivel donde veremos si existe matrices
      datos[[i]] <- x[[i]] #tomamos los elementos de la matriz x[[i]]
      if(identical(class(datos[[i]]),"list")){ #identificamos si ese elemento es una lista
        for(j in 1:length(x[[i]])){ #segundo bucle
          if(identical(class(datos[[j]]),"matrix"))  { #como x[[i]]es una lista analizamos si dentro de esa lista hay una matriz
           contador=contador+1 #si se encontro una matriz el contador aumenta en 1
          }
        }  
      }
      else if(class(datos[[i]])=="matrix"){ #si en x[[i]] hay una matriz
        contador=contador+1 #contador aumenta en 1
      }
      
    
  }
  contador #mostramos el contador
}


unalista <- list(aa=c(3.4,1),bb=matrix(1:4,2,2),
                    cc=matrix(c(T,T,F,T,F,F),3,2),dd="cadena aqui",
                    ee=list(c("hola","tu"),matrix(c("hola","there"))),
                    ff=matrix(c("red","green","blue","yellow")))#lista que contiene matrices y listas

buscamatrices(unalista) # analiza la lista buscando matrices y nos da como resultado 4 

unalista <- list("salio algo raro",as.vector(matrix(1:6,3,2))) #lista que contiene dos vectores

buscamatrices(unalista)# analiza la lista buscando matrices y nos da como resultado 0 

unalista<- list(list(1,2,3),list(c(3,2),2),list(c(1,2),matrix(c(1,2))),rbind(1:10,100:91))#error con esta lista corregir

buscamatrices(unalista)# analiza la lista buscando matrices y nos da como resultado 2
