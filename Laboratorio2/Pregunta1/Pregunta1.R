# Nombre: Jesus Angel Condor Torres 20141378D
# Respuesta 1.a: El codigo muestra los elementos del paquete "methods"
# Para ver elementos del paquete methods primero busquemos una referencia

help("methods")
help("addNextMethod")
methods::addNextMethod() # Profesor, no pude encontrar ejemplos para estos 
methods::allGenerics()   # metodos
methods::allNames()
methods::Arith
methods::as()
methods::`as<-`()
methods::asMethodDefinition()
methods::assignClassDef()
methods::assignMethodsMetaData()
methods::balanceMethodsList()
methods::`body<-`()
methods::cacheGenericsMetaData()
methods::cacheMetaData()
methods::cacheMethod()
methods::callGeneric()
methods::callNextMethod()
methods::canCoerce()
methods::cbind2()
methods::checkAtAssignment()  
methods::checkSlotAssignment() # Luego una vez tenido estos paquetes pasemos a
                               # enlistarla de la siguiente manera.
# Para listar los primeros 20 metodos
ls("package:methods")[1:20]#listar 20 datos
# Para observar todos los metodos 
ls("package:methods") #hay 218 items en total

# Respuesta 1.b: El codigo muestra el entorno que posee cada una de las 
# siguientes funciones.
environment(read.table) # Su entorno se llama namespace:utils

environment(data) # Su entorno se llama namespace:utils

environment(matrix) # Su entorno se llama namespace:base

environment(jpeg) # Su entorno se llama namespace:grDevices, todas se muestran 
                  # por consola.

# Respuesta 1.c: El codigo muestra el uso de "ls" y "test" como afirmar que la
# funcion smoothScatter es parte del paquete Graphics.
ls("package:graphics")=="smoothScatter" # Analiza cada elemento de el 
                                        # package:graphics y comprueba si es 
                                        # igual a smoothScatter
