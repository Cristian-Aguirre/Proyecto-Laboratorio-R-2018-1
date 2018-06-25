# Nombre: Jesus Condor Torres 20141378D
# Respuesta: En las siguientes lineas de codigo identificaremos que estilo de 
# de coincidencias de argumentos, pueden ser: exacto, parcial, posicional o mixto

array(8:1,dim=c(2,2,2))
# array(8:1,dim=c(2,2,2)) -> mixto
# 8:1 -> posicional
# dim=c(2,2,2) -> exacto

rep(1:2,3)
# rep(c, times=x , length.out = NA, each = 1)
# c=1:2, times = 3
# rep(1:2,3) -> Posicional

seq(from=10,to=8,length=5)
# seq(from=10,to=8,length=5) -> mixto
# from=10 -> exacto
# to=8 -> exacto
# length -> parcial

sort(decreasing=T,x=c(2,1,1,2,0.3,3,1.3))
# sort(decreasing=T,x=c(2,1,1,2,0.3,3,1.3)) -> exacto

which(matrix(c(T,F,T,T),2,2))
# which(matrix(c(T,F,T,T),2,2)) -> posicional
# matrix(c(T,F,T,T),2,2) -> posicional

which(matrix(c(T,F,T,T),2,2),a=T)
# which(matrix(c(T,F,T,T),2,2),a=T) -> posicional
# matrix(c(T,F,T,T),2,2) -> posicional
