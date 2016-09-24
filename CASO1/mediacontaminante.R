mediacontaminante <- function(directorio="~/GitHub/Programacion_Actuarial_III_OT16/specdata", contaminante, id = 1:332) {
  setwd(directorio)
  total_suma <- numeric()
  for (vari in id) {
    id_otro <- formatC(vari,width = 3,flag ="0")
    readen <- read.csv(paste(id_otro,".csv",sep =""),header = T)
    
    #Primeras condiciones
      if(contaminante=="sulfate"){
        total_suma <- c(total_suma,readen$sulfate)
        #caso sulfato
        
      } else if (contaminante=="nitrate"){
        total_suma <- c(total_suma,readen$nitrate) 
        #caso nitrato
        
      } else {
        paste("El contaminante",contaminante,"que ha indicado no existe en la lista")
        #ninguno de los anteriores
      }
    
  }
  
  promedio <- mean(total_suma, na.rm = T)
  promedio
  #Calcula el promedio
}
mediacontaminante(, "sulfate",1)
mediacontaminante(,"nitrate",12:50)
