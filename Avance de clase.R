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
data <- read.table("table.csv",T,",")
data

