corr <- function(directorio= "~/GitHub/Programacion_Actuarial_III_OT16/specdata", horizonte=0) {
  setwd(directorio)
  correlacion <- vector("numeric",0)
  contador <- 1
  for (vari in 1:332) {
    id_otro <- formatC(vari,width = 3,flag = "0")
    readen <- read.csv(paste(id_otro,".csv",sep = ""),header = T)
    mydata <- data.frame(readen$sulfate,readen$nitrate)
    completa <- mydata[complete.cases(mydata),]
    numero <- nrow(completa)
    
    if (numero>horizonte) {
      length(correlacion) <- length(correlacion)+1
      correlacion[k] <- cor(completa[,1],completa[,2])
      contador <- k+1
    }
  }
  correlacion
}
cr <- corr("~/GitHub/Programacion_Actuarial_III_OT16/specdata",150)
head(cr)