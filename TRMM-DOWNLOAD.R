setwd("C:/Users/pjf_f/Desktop/arquivos/dados/TRMM")
#############DOWNLOAD

for (ano in 1998:1998) {

download.file(paste("ftp://disc2.nascom.nasa.gov/data/TRMM/Gridded/3B43_V7/",ano,"/",sep=""),"listaTRMM.txt")
require(XML)
html<-htmlTreeParse(readLines("listaTRMM.txt"),useInternal=T)
arquivos<-xpathSApply(html, "//a[@href]", xmlGetAttr, "href")
arquivos<-arquivos[-1]
arquivos<-sub(".*/","",arquivos)

for (arquivo in arquivos) {
download.file(paste("ftp://disc2.nascom.nasa.gov/data/TRMM/Gridded/3B43_V7/",ano,"/",arquivo,sep=""),arquivo,mode="wb")

}
}
####################PROCESSING

arquivos<-dir(,pattern=".bin$")


for (arquivo in arquivos) {

require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(filename, 'tif'))

}

arquivos<-dir(,pattern="^3B43.00.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2000_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.01.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2001_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.02.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2002_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.03.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2003_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.04.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2004_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.05.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2005_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.06.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2006_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.07.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2007_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.08.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2008_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.09.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2009_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.10.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2010_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.11.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2011_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.12.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2012_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.13.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2013_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.14.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2014_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.15.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2015_",count,sep=""), 'tif'))

}

arquivos<-dir(,pattern="^3B43.16.*.precipitation.bin$")

count<-0

for (arquivo in arquivos) {
count<-count+1
require(raster)
# trmm template
trmm <- raster(xmn=-180, xmx=+180, ymn=-50, ymx=50, ncol=1440, nrow=400)
filename <- arquivo
trmm[] <- readBin(filename, 'double', n=576000, size=4, endian='big')
# normalize (North up, -180.. 180)
x <- flip(trmm, 'y')
# write to geotif
x <- writeRaster(x, extension(paste("prec_2016_",count,sep=""), 'tif'))

}
