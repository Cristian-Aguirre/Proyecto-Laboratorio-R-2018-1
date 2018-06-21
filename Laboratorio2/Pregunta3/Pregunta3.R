#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 3
#haciendo uso de vectores,matrices en las cuales hacemos operaciones con sus elementos
#y comprobamos si existe una relacion entre ellos.

#pregunta 3 seccion a
vec1 <- c(2,1,1,3,2,1,0) #creacion del vector vec1
vec2 <- c(3,8,2,2,0,0,0) #creacion del vector vec1
if((vec1[1]+vec2[2])==10){ cat("Imprime el resultado!") } #se cumple la condicion y se imprime la cadena
if (vec1[1]>=2&&vec2[1]>=2){ cat("Imprime el resultado!") } #se cumple la condicion y se imprime la cadena
if(all((vec2-vec1)[c(2,6)]<7)){ cat("Imprime el resultado!") } #no se cumple la condicion y no se imprime la cadena
if(!is.na(vec2[3])){ cat("Imprime el resultado!") } #se cumple la condicion y se imprime la cadena

#pregunta 3 seccion b

#se crea un bucle para recorrer todo el vector vec1 y vec2 y asi comprobar
#si se cumple que vec1[i]+vec2[i]>3 entonces los vectores vec1[i] y vec2[i] se multiplicaran y se almacenaran
#en el vector x en caso contrario los vectores vec1[i] y vec2[i] se sumaran

x<-c() #creamos el vector x donde se almacenara el resultado

for(i in 1:length(vec1)){ #recorremos todos los elementos del vector
  if((vec1[i]+vec2[i])>3){ #si se cumple la condicion se multiplican los vectores vec1[i] y vec2[i]
    x[i]<-vec1[i] * vec2[i] #se almacena el resultado en el vector x
  }
  else{ #en caso de que no se cumpla la condicion se suman los vectores vec1[i] y vec2[i]
   x[i]<-vec1[i]+vec2[i]#se almacena el resultado en el vector X
  }
}
x # el resultado final es el vector x = (6 8 3 6 2 1 0)


#pregunta 3 seccion c

#creamos la funcion metodo que recibira como parametro una matriz x
#luego se obtendra la diagonal con el metodo diag()
#y mediante un bucle verificaremos si algun elemento de ello contiene una g
#en caso que se de agregamos un contador (z) el cual nos servira para verificar
#si no existe ningun elemento que empieze con g y asi poder reemplazarla con la
#matriz identidad.

metodo <-function(x){
  

  diagonal <- diag(x) #extramos la diagonal de la matriz x
  z<-0#contado
  for (i in 1:length(diagonal)){#bucle para recorrer todo el vector diagonal
  if(substring(diagonal[i],1,1)=='g' || substring(diagonal[i],1,1)=='G'){ #comprobamos si existe una palabra g o G en cada elemento
    x[i,i]="AQUI" #se reemplaza el elemento de la diagonal con la palabra AQUI
    z<-z+1 #aumenta el contador
  }
  }
    if(z==0){ #si no se ah encontrado ninguna g o G al inicio de cada elemento entonces se reemplaza la matriz x con la matriz identidad

        x = diag(1,nrow=length(diagonal)) #se reemplaza la matriz x por la diagonal

    }
  x #mostramos la matriz x despues de la busqueda
}

mymat <- matrix(as.character(1:16),4,4) #creamos la matriz mymat
print("antes") #imprime la cadena antes
mymat#mostramos la matriz al inicio
print("despues") #imprime la cadena despues
  metodo(mymat) #se ejecuta la funcion metodo con parametro matriz mymat y nos devuelve una matriz

mymat <- matrix(c("DANDELION","Hyacinthus","Gerbera",
                    "MARIGOLD","geranium","ligularia",
                    "Pachysandra","SNAPDRAGON","GLADIOLUS"),3,3) #creamos la matriz mymat con otros elementos
print("antes") #imprime la cadena antes
mymat #mostramos la matriz al inicio
print("despues") #imprime la cadena despues
  metodo(mymat) #se ejecuta la funcion metodo con parametro matriz mymat y nos devuelve una matriz

mymat <- matrix(c("GREAT","ejercicioss","agua","hey"),2,2,
                   byrow=T) #creamos la matriz mymat con otros elementos
print("antes") #imprime la cadena antes
mymat#mostramos la matriz al inicio
print("despues") #imprime la cadena despues
  metodo(mymat) #se ejecuta la funcion metodo con parametro matriz mymat y nos devuelve una matriz
