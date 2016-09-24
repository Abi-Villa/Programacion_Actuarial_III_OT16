corr <- function(directorio= "~/GitHub/Programacion_Actuarial_III_OT16/specdata", horizonte=0) {
  setwd(directorio)
  correlacion <- vector("numeric")
  contador <- vector("numeric")
    #Condiciones
  for (vari in 1:332) {
    if (vari<10){
      excel <- read.csv(paste("00",vari,".csv",sep = ""))
    }else if (vari>=10 && vari<100){
      excel <- read.csv(paste("0",vari,".csv",sep = ""))
      
    }else{
      excel <- read.csv(paste(vari,".csv",sep = ""))
    }
    #Lo anterior fue para leer los datos desde excel p/e: 022.csv
    
    #Buscaremos los casos que si estan completos
    completos <- complete.cases(excel)
    leer <- excel[completos, ]
    siguiente <- nrow(leer)
    
    if(siguiente>=horizonte){
      contador <- cor(leer[2],leer[3])
      abi <- as.vector(contador)
      correlacion <- c(correlacion,abi)
    }
    #Condiciones para el horizonte usando la funcion correlación 
  }
  print(correlacion)
}
corr(,22)