

### Algoritmos de convolucion - Archivo referenciado en el informe-final
### seccion 4-Experimentos y resultados

## Primer codigo

library(distr)# Activamos la libreria distr
for(i in 1:5){
  X <- Norm() * Pois(lambda = i) # Iniciamos nuestra distribucion conjunta
  m <- q(X)(.25) # Calculamos la funcion "qunatile"
  print(m) # Mostramos por consola el resultado
}  

for(i in 1:10){
  X <- Norm() * Pois(lambda = i) # Iniciamos nuestra distribucion conjunta
  n <- p(X)(1:3) # Mostramos el CDF segun el dominio que le ponemos
  print(n) # Mostramos por consola el resultado
}

for(i in 1:5){
  X <- Norm() * Pois(lambda = i)
  r <- r(X)(5)
  print(r)
}
  
# Graficamos la funcion obtenida
plot(X, cex.inner = 1, to.draw.arg = c(1,2), inner = c("CDF", "quantile function"))


## Segundo Codigo

library("distrEx")# Iniciamos el paquete distrEX
distroptions(TruncQuantile = 1e-15)# Variamos el parametro "TruncQuantile
B1 <- Binom(size = 25, prob = 0.75)# Iniciamos nuestra distribucion binomial
B2 <- convpow(B1, N = 10) # Iniciamos nuestra segunda distribucion
D1 <- as(B1, "LatticeDistribution")
D2 <- convpow(D1, N = 10)
TotalVarDist(B2,D2)# Calcula la distancia de variacion total entre las dos distribuciones
KolmogorovDist(B2, D2)# Calcula la distancia de Kolmogorov entre las 2 distribuciones

