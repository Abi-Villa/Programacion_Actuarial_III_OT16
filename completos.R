completos <- function(directorio= "~/GitHub/Programacion_Actuarial_III_OT16/specdata", id= 1:332) {
  setwd(directorio)
  nobs <- vector("numeric", length(id))
  contador <- 1
  for (vari in id) {
    id_otro <- formatC(vari,width = 3,flag = "0")
    readen <- read.csv(paste(id_otro, ".csv",sep = ""),header = T)
    sul <- (readen$sulfate)
    nit <- (readen$nitrate)
    mydata <- data.frame(x,y)
    nobs[k] <- nrow(mydata[complete.cases(mydata),])
    contador <- contador+1
  }
  data.frame(id=id,nobs=nobs)
}
completos("specdata",id=30:25)

