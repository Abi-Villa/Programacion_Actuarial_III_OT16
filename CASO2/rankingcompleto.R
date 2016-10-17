rankingcompleto <- function(resultado, num="mejor"){
  #nuevo directorio de trabajo
  setwd("C:/Users/Personal/Documents/GitHub/Programacion_Actuarial_III_OT16/Hospitales Informacion")
  #lectura de datos
  lectura <- read.csv("outcome-of-care-measures.csv")
  segundo <- c("ataque","falla","neumonia")
  if (resultado=="ataque") col <- 11
  else if (resultado=="falla") col <- 17
  else if (resultado=="neumonia") col <- 23
  else if (resultado %in% lectura==F){
    stop("Resultado Inválido!!")
  }
  lectura[,col] <- suppressWarnings(as.numeric(levels(lectura[,col])[lectura[,col]]))
  lectura[,2] <- as.character(lectura[,2])
  
  output <- vector() #llenando vector por filas 
  estados <- levels(lectura[,7])
  for(inicio in 1:length(estados)){
    infoest <- lectura[grep(estados[inicio],lectura[,7]),]
    orden <- infoest[order(infoest[,col],infoest[,2],na.last = NA),]
    
    if(num=="mejor") hospital <- orden[1,2]
    else if(num=="peor") hospital <- orden[nrow(orden),2]
    else hospital <- orden[num,2]
    
    output <- append(output,c(hospital,estados[inicio]))
    
  }
  #colocar resultados en forma de matriz
  output <- as.data.frame(matrix(output,length(estados),2,byrow = TRUE))
  colnames(output) <- c("hospital","state")
  rownames(output) <- estados
  output
}

head(rankingcompleto("ataque", 20), 10)
tail(rankingcompleto("neumonia", "peor"), 3)
