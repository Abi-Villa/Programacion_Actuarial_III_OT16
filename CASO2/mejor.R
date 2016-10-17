mejor <- function(estado,resultado){
  #nuevo directorio de trabajo
  setwd("C:/Users/Personal/Documents/GitHub/Programacion_Actuarial_III_OT16/Hospitales Informacion")
 
   #lectura de datos
  lectura <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  primero <- levels(factor(lectura[,7]))
  segundo <- c("ataque", "falla", "neumonia")
  
  #condiciones
    if(estado %in% primero == F){
      stop("Estado Inválido!!") #el estado señalado no existe 
      break
    }
  
    if(resultado == "ataque")r <- 11
    else if (resultado == "falla") r <- 17
    else if (resultado == "neumonia") r <- 23
    else if (resultado %in% segundo == F){
      stop("Resultado Inválido!!") #El resultado señalado no existe :p
      break
    }
  
    mydata <- lectura[lectura$State == estado,]
    mnd <- mydata[,c(2,r)]
    
    if (sum(mnd[,2]=="Not Available")<1){
      tercero <- mnd[order(as.numeric(mnd[,2])),]
      cuarto <- tercero[which(tercero[,2]==tercero[1,2]),]
      quinto <- cuarto[order(cuarto[,1]),]
      quinto[1,1]
    }
    else {
      sexto <- mnd[- grep("Not",mnd[,2]),]
      tercero <- sexto[order(as.numeric(sexto[,2])),]
      cuarto <- tercero[which(tercero[,2]==tercero[1,2]),]
      quinto <- cuarto[order(cuarto[,1]),]
      quinto[1,1]
    }
}

mejor("MD","ataque")
mejor("TX","falla")
mejor("MD", "neumonia")
