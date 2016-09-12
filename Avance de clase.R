# Matrices
m <- matrix(nrow = 2,ncol = 3)
m
dim(m)
attributes(m)
# Cambio de dimensiones de 2x3 a 3x2
dim(m) <- c(3,2)
m
# Crear una matriz con datos
m <- matrix(1:6,3,2)
m

m <- matrix(1:6,3,3,TRUE)
m
class(m)
str(m)

dim(m) <- c(2,5) #Esto va a producir error

x <- c(1,2,3)
y <- c("a","b","c")
z <- c(x,y)
z

m1 <- rbind(m,y)
m1

m2 <- cbind(m,y)
m2

#Factores

x <- factor(c("si","no","si","si","no","si","no"))
x
table(x)
unclass(x)
x <- factor(c("si","no","si","si","no","si","no"),levels = c("si","no"))

x <- factor(c("azul","azul","rojo","azul","amarillo","verde","azul"))
x
table(x)

#Valores Faltantes
x <- c(1,2,NaN,10,3)
is.na(x)
is.nan(x)

#Data Frames
x <- data.frame(Erick = 1:4, Lori = c(T,T,F,F))
row.names(x) <- c("Primero","Segundo","Tercero","cuarto")
x
nrow(x)
ncol(x)
attributes(x)
names(x) <- c("Yarely","Karen")
x

#Los nombres no son exclusivos de los data frame
x <- 1:3
names(x) #NULL
names(x) <- c("Hugo","Paco","Luis")
x

x <- list(a=1:10,b=100:91,c=51:60)
x
names(x) <-c("Seq1","Seq2","Seq3")
x

m <- matrix(1:4,2,2)
m
attributes(m)
dimnames(m) <- list(c("fil1","fil2"),c("col1","col2"))
m

m <- matrix(NA,4,6)
m
dimnames(m) <- list(c("1","2","3","4"),c("A","B","C","D","E","F"))
m

#Lectura de datos
getwd()
setwd("~/GitHub/Programacion_Actuarial_III_OT16")
data <- read.csv("table.csv")
data <- read.table("table.csv",T,",",nrows = 100)
clases <- sapply(data,class)
data <- read.table("table.csv",T,",",colClasses = classes)
data

# Uso de dput y dget
y <- data.frame(a=1,b="a")
dput(y)
dput(y,file = "y.R")
nueva.y <- dget("y.R")
y
nueva.y

x <- "Programacion Actuarial III"
y <- data.frame(a=1, b="a")
dump(c("x","y"),file = "data.R")
rm(x,y)
source("data.R")

a <- head(airquality)
dput(a)
dput(a,file= "air_abi.R")
a <- structure(airquality)


#Valores Faltantes
airquality[1:6,]
completos <- complete.cases(airquality)
airquality[completos,]
airquality[completos,][1:6,]
airquality[1:6,][completos,]


x <- 1:4; y <- 6:9
x + y


m <- matrix(1:6,2,3)
m

x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))) {for(j in seq_len(ncol(x))){print(x[i,j])}}

count <- 0
while(count<10){print(count)}

z <- 5
while(z>=3 && z<=10) {
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z <- z+1
  } else {
      z <- z - 1
  }
}


  

z <- 5
caminata <- vector("numeric")
while(z>=3 && z<=10) {
  print(z)
  caminata <- c(caminata,z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z <- z + 1
  } else {
    z <- z - 1
  }
}
caminata
plot(caminata,type = "l") 
