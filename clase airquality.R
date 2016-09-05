a <- head(airquality)
dput(a)
dput(a,file= "air_abi.R")
a <- structure(airquality)

dput(a)
dput(a,file= "air_abi.R")