#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 5
#haciendo el uso de bucles para hallar el factorial de un numero y
#haciendo el uso de cadenas para sacar subcadenas.

#pregunta 5 seccion a

#creamos la funcion factorial que recibe como parametro un numero entero positivo

factorial<-function(minum){ 
  resultado <- 1 #definimos resultado con valor 1
  while(minum>=0){ #se ejecuta el bucle cuando minum>=0
    if(minum>0){ #se verifica que minum>0
      resultado<-resultado*minum; #resultado es igual a resultado*minum
    }
    else if(minum==0){ #en caso de que minum = 0
      resultado<-resultado*1 #resultado es igual a resultado*1
    }
    minum<-minum-1 #se disminuye el valor de minum
  } 
resultado #se muestra el valor de minum almacenado en resultado.
  
}

factorial(5) #mostramos el valor de factorial(5) = 120
 
factorial(0) #mostramos el valor de factorial(0) = 1

factorial(12) #mostramos el valor de factorial (12) = 479001600

#pregunta 5 seccion b

#funcion completar que recibe como parametro una cadena 

completar<-function(cadena){
  index <- 1 #index = 1
  ecount <- 0 #contador = 0
  resultado<-"" #resultado cadena vacia
  while(ecount<2 && index<=nchar(cadena)){ #mientras ecount<2 e index <= nchar(cadena) se ejecuta el bucle
    char<-substring(cadena,index,index) #se almacena en char la subcadena de cadena que es una letra de la cadena
    if(char=="e"||char=="E"){ #si la letra es e o E 
      ecount<-ecount+1 #se aumenta el contador en 1
    }
    if(ecount==2){ #si el contador es 2
      resultado<-substring(cadena,1,index-1) #el resultado es la subcadena desde 1 hasta la letra donde se encuentra la segunda E o e
    }
    index<-index+1 #aumenta el index
  }
  resultado #mostramos el resultado
}

unacadena <- "R fever"
completar(unacadena) #se ejecuta la funcion y nos da como resultado R Fev
