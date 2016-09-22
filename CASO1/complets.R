complets <- function(directorio="~/GitHub/Programacion_Actuarial_III_OT16/specdata", id = 1:332) {
  setwd(directorio)
  
  variable <- vector("numeric")
  for (inicio in id) {
    if(inicio<10){
      excel <- read.csv(paste("00",inicio,".csv",sep = ""))
      
    } else if(inicio>=10 && inicio <100) {
      excel <- read.csv(paste("0",inicio,".csv",sep = ""))
      
    }else{
      excel <- read.csv(paste(inicio,".csv",sep = ""))
    }
    si <- complete.cases(excel)
    ok <- excel[si,]
    nf <- nrow(ok)
    variable <- c(variable,nf)
    
  }
  table1 <- data.frame(id,nobs=variable)
  table1
  
}

complets(, 1:110)
  