#Instalar paquetes
install.packages("dslabs")
#traer libreria a proyecto actual
library(dslabs)
#mostrar estructura de la tabla
str(murders)
#seis primeros regsitros de la tabla
head(murders)
#Muestra columna population
murders$population
#muestra los nombres de las columnas
names(murders)
#tamaño
length(murders)
#valores que puede haber en la columna (region es columna con valores determinados como un select)
levels(murders$region)
#Valores del uno a cinco
seq(1,5)
#Otra forma de acceder a la columna
murders[["population"]] == murders$population
#comparar, este caso retorna falso
identical("a","b")
#Crea tabla x
x <- c("a","b","c") 
print(x)
#muestra el numero de elementos que hay de cada columna
table(x)
#Estados por region
table(murders$region)
#Muestra lo que hay en dicha posición
x[2]
#Muestra lo que hay en un arreglo de posiciones
x[c(1,3)]
#Convierte a caracter
as.character(5)
#Ordena de menor a mayor
sort(x)
#Muestra el indice de menor amayor segun el valor
y <- c(25,3,89)
order(y)
#Muestra el valor mayor
max(y)
#indice del mayor
which.max(y)
#indice del menor
which.min(y)
#Devuelve el tamaño en el que el valor esta en la lista EJM: 25 es el segundo mas pequeño devuelve 2
rank(y)
#Crear tabla con dos columnas data.frame(nombreColumna=valoresColumna)
mi_tabla <- data.frame(estados=murders$state,population=murders$population)
#Saca la media
mean(murders$population)
#Devuelve el indice de los verdaderos
b <- c(FALSE,FALSE,TRUE,FALSE,TRUE)
which(b)
#Devuelve el indice de los elementos de x1 que estan en x2 en la posicion que estan en x2
x1 <- c(4,9,3,8,1)
x2 <- c(8,96,1,25)
match(x1,x2)
#Devuelve true o false dependiendo si el valor de x2 esta en x1
x2 %in% x1
#---------------------------------------------
#---------------------------------------------
#Package dplyr -> Para manipular data.tables
install.packages("dplyr")
library(dplyr)
#Agrega columna nueva
mi_tabla <- mutate(mi_tabla,abreviado=murders$abb)
#Filtrar columnas
filter(mi_tabla,population <= 600000)
#Crea nueva tabla con columnas especificas de otra tabla
mi_tabla2 <- select(mi_tabla,population,abreviado)
#---------------------------------------------
#---------------------------------------------
#Plot
murders_in_millions <- murders$population/10^6
total_guns_murders <- murders$total
#Graficamos el numero de asesinatos segun el tamaño de la población
plot(murders_in_millions,total_guns_murders)
#Histograma
hist(murders$total)
#boxPlots, comparamos el numero de abitantes por region y indicamos que los datos salen de la tabla murders
boxplot(population ~ region, data = murders)
#---------------------------------------------
#---------------------------------------------
#Condicional
a <- 2
if(a != 0){
  print(1/a)
}else{
  print("es ceroooo")
}
x <- c(1,2,-3,4)
if(all(x>0)){
  print("All Positives")
} else{
  print("Not All Positives")
}
#Promedio de muertes
murder_rate <- murders$total/murders$population*100000
ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.5){
  print(murders$state[ind])
}else{
  print("todos son mayores")
}
#otra forma de condicional
ifelse(a < 1, 1/a, NA)
e <- c(0,1,2,-4,5)
result <- ifelse(e > 0, 1/e, NA)
#Funcion any
anyVar <- c(TRUE, FALSE, FALSE)
any(anyVar)
anyVar <- c(FALSE, FALSE, FALSE)
any(anyVar)
#Funcion all
allVar <- c(TRUE, FALSE, FALSE)
all(allVar)
allVar <- c(TRUE, TRUE, TRUE)
all(allVar)
#---------------------------------------------
#---------------------------------------------
#Funciones
avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}

x <- 1:100
avg(x)
#---------------------------------------------
#---------------------------------------------
#Loops
for(i in 1:5){
  print(i)
}