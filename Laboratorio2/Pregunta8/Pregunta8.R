# Nombre: Jesus Condor Torres 20141378D
# Respuesta 8.1: El codigo hace la funcion de inversion de una matriz con los 
# requisitos que manda la pregunta.
invertir <- function (x,noinv,nomat,silent){# Tiene por entrada los elementos de
  if(identical(class(x),"list")){# la lista, un valor noinv en el caso que la
    if(length(x)==0){# la matriz no pueda invertirse, tambien una cadena de 
      print("Error la lista esta vacia, ingrese una lista con almenos 1 elemento");
    } else{# caracteres y un valor logico.
      
      if(!identical(class(nomat),"character")){# Identifica si es una lista o no
        print("warnirg: nomat no es una cadena")
        nomat<-as.character(nomat)}# Lo vuelve una cadena
      for(i in 1:length(x)){# Trabaja con los valores de la lista
        if(identical(class(x[[i]]),"matrix")){  
          if(class(try(solve(x[[i]])))=="matrix"){# Usa el valor logico
            x[[i]]<-try(solve(x[[i]]),silent)
          }else{  
            y<-x[[i]]
            for(k in 1:nrow(x[[i]])){
              for(j in 1:ncol(x[[i]])) {
                y[k,j]<-noinv   # Se aumenta valores en el caso que no sea matriz                                   
              }                 # invertible
            }
            x[[i]]<-y
          }
          
        }else {
          y<-x[[i]]
          for(j in 1:length(y)){# Almacena la matriz invertida
            y[j]<-nomat
          }
          x[[i]]<-y
        }
      }
    }
    print(x)# Sale como resultado la matriz invertida
  } else {
    s<-paste("error ingresaste un/una",class(x),"ingrese una lista",sep=" ")
    print(s)
  }
  
} # Fin de la funcion

# Respuesta 8.2: Una vez hecho la funcion de 8.1, procederemos a usarlo en las 
# siguientes lineas de codigo
silent<-TRUE # Le damos el valor de verdadero
x<-list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2))#Iniciamos la lista
noinv<-Inf # Le damos el valor inf
nomat<-666 # le damos un valor numerico

invertir(x,noinv,nomat,silent)# Usamos la funcion creada

x<-list(diag(9),matrix(c(0.2,0.4,0.2,0.1,0.1,0.2),3,3),rbind(c(5,5,1,2),
                       c(2,2,1,8),c(6,1,5,5),c(1,0,2,0)),matrix(1:6,2,3),
                       cbind(c(3,5),c(6,5)),as.vector(diag(2)))#Iniciamos otra 
noinv<-"matriz inadecuada" #Lo iniciamos una cadena            # lista
silent<-TRUE # Iniciamos con valor logico
nomat<-666 # Iniciamos con valor numerico
invertir(x,noinv,nomat,silent) # Usamos nuestra funcion hecha

x<-"hola" # Iniciamos x como cadena
invertir(x,noinv,nomat,silent)

x<-list() # Inciaciamos una lista vacia
invertir(x,noinv,nomat,silent)

  
