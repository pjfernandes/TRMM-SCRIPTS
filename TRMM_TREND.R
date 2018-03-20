library(raster)
library(rts)

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

datas<-seq(as.Date("2000-01-01"),as.Date("2015-12-01"),by="month")

ls<-list()
for(i in dir(,pattern="prec")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

my<-rts(s,datas)
my2<-apply.yearly(my,mean)

y00<-subset(my2,1)
y01<-subset(my2,2)
y02<-subset(my2,3)
y03<-subset(my2,4)
y04<-subset(my2,5)
y05<-subset(my2,6)
y06<-subset(my2,7)
y07<-subset(my2,8)
y08<-subset(my2,9)
y09<-subset(my2,10)
y10<-subset(my2,11)
y11<-subset(my2,12)
y12<-subset(my2,13)
y13<-subset(my2,14)
y14<-subset(my2,15)
y15<-subset(my2,16)

s_all<-stack(y00,y01,y02,y03,y04,y05,y06,y07,y08,y09,y10,y11,y12,y13,y14,y15)

fun1 <- function(x) { 
  if (is.na(x[1])) { 
    NA 
  } else { 
    m = lm(x ~ time) 
    m$coefficients[2] 
  } 
} 

fun2 <- function(x) { 
  if (is.na(x[1])) { 
    NA 
  } else { 
    m = lm(x ~ time) 
    summary(lm(x~time))$coefficients[8] 
  } 
} 

time<-1:nlayers(s_all)

l_m<-calc(s_all,fun1)
p<-calc(s_all,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")

writeRaster(final,"tend_anual_TRMM.tif")

###############################################################JANEIRO
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_01.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_janeiro_TRMM.tif")

###############################################################MARÇO
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_03.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_marco_TRMM.tif")

###############################################################ABRIL
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_04.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_abril_TRMM.tif")

###############################################################MAIO
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_05.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_maio_TRMM.tif")

###############################################################JUNHO
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_06.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_junho_TRMM.tif")

###############################################################JULHO
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_07.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_julho_TRMM.tif")

###############################################################AGOSTO
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_08.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_agosto_TRMM.tif")

###############################################################SETEMBRO
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_09.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_setembro_TRMM.tif")

###############################################################OUTUBRO
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_10.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_outubro_TRMM.tif")

###############################################################NOVEMBRO
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_11.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_novembro_TRMM.tif")

###############################################################DEZEMBRO
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern="_12.tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_dezembro_TRMM.tif")

###############################################################TOTAL
setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO")

ls<-list()
for(i in dir(,pattern=".tif")) {
  r<-raster(i)
  ls<-append(ls,r)
}

s<-stack(ls)

time<-1:nlayers(s)

l_m<-calc(s,fun1)
p<-calc(s,fun2)
p_mask<-p<0.05
p_mask[p_mask==0][]<-NA

final<-l_m*p_mask

setwd("C:/Users/UFF/Desktop/arquivos/arquivos_d/dados/TRMM/TRMM_ARTIGO1_CERTO/AQUI")
writeRaster(final,"tend_total_TRMM.tif")








