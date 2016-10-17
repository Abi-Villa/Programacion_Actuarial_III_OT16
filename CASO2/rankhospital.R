rankhospital <- function(estado, resultado, num="mejor"){
  #estableciendo nuevo directorio de trabajo
  setwd("C:/Users/Personal/Documents/GitHub/Programacion_Actuarial_III_OT16/Hospitales Informacion")
  #lectura de datos
  lectura <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  primero <- levels(factor(lectura[,7]))
  segundo <- c("ataque", "falla", "neumonia")
  
  #Condiciones
  if(estado %in% primero == F){
    stop("Estado Inválido!!")
    break
  }
  
  if(resultado == "ataque")r <- 11
  else if (resultado == "falla") r <- 17
  else if (resultado == "neumonia") r <- 23
  else if (resultado %in% segundo == F){
    stop("Resultado Inválido!!")
    break
  }
  mydata <- lectura[lectura$State == estado,]
  mnd <- mydata[,c(2,r)]
  
  if (sum(mnd[,2]=="Not Available")<1){
    tercero <- mnd[order(as.numeric(sexto[,2])),]
    if (num=="mejor") num <-1
    else if(num=="peor")num <- nrow(tercero)
    else if(num>nrow(tercero)){
      stop(return(NA)) #el número dado es mayor al numero de hospitales
    }
    inicio <- 0
    while(tercero[inicio+1,2] != tercero[num,2]){
      inicio <- inicio+1
    }
    resta <- num-inicio
    cuarto <- tercero[which(tercero[,2]== tercero[num,2]),]
    quinto <- cuarto[order(cuarto[,1]),]
    quinto[resta,1]
  }
  
    else{
      sexto <- mnd[- grep("Not",mnd[,2]),]
      tercero <- sexto[order(as.numeric(sexto[,2])),]
      
      if (num== "mejor") num <-1
      else if (num == "peor") num <- nrow(tercero)
      else if (num>nrow(tercero)){
        stop(return(NA))
      }
      
      inicio <- 0
      while(tercero[inicio+1,2] != tercero[num,2]){
        inicio <- inicio+1
      }
      resta <- num-inicio
      cuarto <- tercero[which(tercero[,2]== tercero[num,2]),]
      quinto <- cuarto[order(cuarto[,1]),]
      quinto[resta,1]
    }
}

rankhospital("TX","falla",4)
rankhospital("MD", "ataque", "peor")
rankhospital("MN", "ataque", 5000)
