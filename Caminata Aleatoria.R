contar_arriba <- 0
contar_abajo <- 0
for(i in 1:100){
z <- 5

while(z>=3 && z<=10) {
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z <- z + 1
  } else {
    z <- z - 1
  }
}

if (z<10) {
  contar_abajo <- (contar_abajo + 1)} 
  else{
    contar_arriba <- (contar_arriba +1)}  
}  
contar_arriba 

contar_abajo



