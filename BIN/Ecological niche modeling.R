#Installing packages

install.packages("dismo")
install.packages("maptools")
install.packages("sp")
install.packages("ATR")
install.packages("rgdal")
install.packages("raster")
install.packages("ecospat")
install.packages("SDMTools")
install.packages("phyloclim")
install.packages("ecospat")

#Loads libraries

library(dismo)
library(maptools)
library(sp)
library(ATR)
library(rgdal)
library(raster)
library(ecospat)   
library(SDMTools)   
library(dismo)      
library(ecospat)
#### Loading species ocurrence data E. a. affinis and E. a. godmani####

dataaffinis<-read.csv(file = "../data/pointsaffinis.csv", sep = ",", header = T)
head(dataaffinis)
datagodmani<-read.csv(file = "../data/pointsgodmani.csv", sep = ",", header = T)
head(datagodmani)

################# PREPARING THE RASTER FILES##########################

#Importing the bioclimatic layers


bio1<-raster("../data/shapes/bio_1.bil")
bio2<-raster("../data/shapes/bio_2.bil")
bio3<-raster("../data/shapes/bio_3.bil")
bio4<-raster("../data/shapes/bio_4.bil")
bio5<-raster("../data/shapes/bio_5.bil")
bio6<-raster("../data/shapes/bio_6.bil")
bio7<-raster("../data/shapes/bio_7.bil")
bio8<-raster("../data/shapes/bio_8.bil")
bio9<-raster("../data/shapes/bio_9.bil")
bio10<-raster("../data/shapes/bio_10.bil")
bio11<-raster("../data/shapes/bio_11.bil")
bio12<-raster("../data/shapes/bio_12.bil")
bio13<-raster("../data/shapes/bio_13.bil")
bio14<-raster("../data/shapes/bio_14.bil")
bio15<-raster("../data/shapes/bio_15.bil")
bio16<-raster("../data/shapes/bio_16.bil")
bio17<-raster("../data/shapes/bio_17.bil")
bio18<-raster("../data/shapes/bio_18.bil")
bio19<-raster("../data/shapes/bio_19.bil")

plot(bio1)
plot(bio2)
plot(bio3)
plot(bio4)
plot(bio5)
plot(bio6)
plot(bio7)
plot(bio8)
plot(bio9)
plot(bio10)
plot(bio11)
plot(bio12)
plot(bio13)
plot(bio14)
plot(bio15)
plot(bio16)
plot(bio17)
plot(bio18)
plot(bio19)

#############################################################################
#                           DEFINING M for EMN                              #
#   The ms were created using the provinces for Neotropical zone defining   # 
# by Morrone, 2014 and available in shapefiles by Lowenberg_Neto_2014       #
#############################################################################

#Loding the Neotropical shapefile
neotropical<-readOGR(dsn = "../data/Neo_SHP", layer = "Lowenberg_Neto_2014")
plot(neotropical)
neotropical$NUMB #see Morrone, 2014 to identified the poligon's numbers with the regionalization


#Plotting points in the neotropical shapefile to select the regions from Morrone's Neotropical regionalisation where at leats one point ocurrences.

points(dataaffinis$Longitud, dataaffinis$Latitud, col = "red", cex = .4, pch = 16)
points(datagodmani$Longitud, datagodmani$Latitud, col = "blue", cex = .4, pch = 16)

#Subset neotropical shapefile by desired provinces for affinis m

provinceaffinis<- c("13", "3", "14", "4", "15", "2", "5","16","17","19", "18")
maffinis<- neotropical[as.character(neotropical@data$NUMB) %in% provinceaffinis,]
maffinis<-crop(maffinis, c(-100.1, -77.71112, 7.218689, 27.75952))

plot(maffinis)

#Crop the raster file for bioclimatic variables

bio1.c <- crop(bio1, extent(maffinis))
bio1.c <- mask(bio1.c, maffinis)
bio2.c <- crop(bio2, extent(maffinis))
bio2.c <- mask(bio2.c, maffinis)
bio3.c <- crop(bio3, extent(maffinis))
bio3.c <- mask(bio3.c, maffinis)
bio4.c <- crop(bio4, extent(maffinis))
bio4.c <- mask(bio4.c, maffinis)
bio5.c <- crop(bio5, extent(maffinis))
bio5.c <- mask(bio5.c, maffinis)
bio6.c <- crop(bio6, extent(maffinis))
bio6.c <- mask(bio6.c, maffinis)
bio7.c <- crop(bio7, extent(maffinis))
bio7.c <- mask(bio7.c, maffinis)
bio8.c <- crop(bio8, extent(maffinis))
bio8.c <- mask(bio8.c, maffinis)
bio9.c <- crop(bio9, extent(maffinis))
bio9.c <- mask(bio9.c, maffinis)
bio10.c <- crop(bio10, extent(maffinis))
bio10.c <- mask(bio10.c, maffinis)
bio11.c <- crop(bio11, extent(maffinis))
bio11.c <- mask(bio11.c, maffinis)
bio12.c <- crop(bio12, extent(maffinis))
bio12.c <- mask(bio12.c, maffinis)
bio13.c <- crop(bio13, extent(maffinis))
bio13.c <- mask(bio13.c, maffinis)
bio14.c <- crop(bio14, extent(maffinis))
bio14.c <- mask(bio14.c, maffinis)
bio15.c <- crop(bio15, extent(maffinis))
bio15.c <- mask(bio15.c, maffinis)
bio16.c <- crop(bio16, extent(maffinis))
bio16.c <- mask(bio16.c, maffinis)
bio17.c <- crop(bio17, extent(maffinis))
bio17.c <- mask(bio17.c, maffinis)
bio18.c <- crop(bio18, extent(maffinis))
bio18.c <- mask(bio18.c, maffinis)
bio19.c <- crop(bio19, extent(maffinis))
bio19.c <- mask(bio19.c, maffinis)

par(mfrow=c(5,4))

plot(bio1.c)
plot(maffinis, add = TRUE)
plot(bio2.c)
plot(maffinis, add = TRUE)
plot(bio3.c)
plot(maffinis, add = TRUE)
plot(bio4.c)
plot(maffinis, add = TRUE)
plot(bio5.c)
plot(maffinis, add = TRUE)
plot(bio6.c)
plot(maffinis, add = TRUE)
plot(bio8.c)
plot(maffinis, add = TRUE)
plot(bio9.c)
plot(maffinis, add = TRUE)
plot(bio10.c)
plot(maffinis, add = TRUE)
plot(bio11.c)
plot(maffinis, add = TRUE)
plot(bio12.c)
plot(maffinis, add = TRUE)
plot(bio13.c)
plot(maffinis, add = TRUE)
plot(bio14.c)
plot(maffinis, add = TRUE)
plot(bio15.c)
plot(maffinis, add = TRUE)
plot(bio16.c)
plot(maffinis, add = TRUE)
plot(bio17.c)
plot(maffinis, add = TRUE)
plot(bio18.c)
plot(maffinis, add = TRUE)
plot(bio19.c)
plot(maffinis, add = TRUE)



#saving the affinis climatic layers by ascii format

writeRaster (bio1.c,filename="../data/croppresent_affinis/bio1",format="ascii")
writeRaster (bio2.c,filename="../data/croppresent_affinis/bio2",format="ascii")
writeRaster (bio3.c,filename="../data/croppresent_affinis/bio3",format="ascii")
writeRaster (bio4.c,filename="../data/croppresent_affinis/bio4",format="ascii")
writeRaster (bio5.c,filename="../data/croppresent_affinis/bio5",format="ascii")
writeRaster (bio6.c,filename="../data/croppresent_affinis/bio6",format="ascii")
writeRaster (bio7.c,filename="../data/croppresent_affinis/bio7",format="ascii")
writeRaster (bio8.c,filename="../data/croppresent_affinis/bio8",format="ascii")
writeRaster (bio9.c,filename="../data/croppresent_affinis/bio9",format="ascii")
writeRaster (bio10.c,filename="../data/croppresent_affinis/bio10",format="ascii")
writeRaster (bio11.c,filename="../data/croppresent_affinis/bio11",format="ascii")
writeRaster (bio12.c,filename="../data/croppresent_affinis/bio12",format="ascii")
writeRaster (bio13.c,filename="../data/croppresent_affinis/bio13",format="ascii")
writeRaster (bio14.c,filename="../data/croppresent_affinis/bio14",format="ascii")
writeRaster (bio15.c,filename="../data/croppresent_affinis/bio15",format="ascii")
writeRaster (bio16.c,filename="../data/croppresent_affinis/bio16",format="ascii")
writeRaster (bio17.c,filename="../data/croppresent_affinis/bio17",format="ascii")
writeRaster (bio18.c,filename="../data/croppresent_affinis/bio18",format="ascii")
writeRaster (bio19.c,filename="../data/croppresent_affinis/bio19",format="ascii")

# Subset neotropical shapefile by desired provinces for godmani m #

par(mfrow=c(1,1))
provincegodmani<- c("13", "4")
mgodmani<- neotropical[as.character(neotropical@data$NUMB) %in% provincegodmani,]
mgodmani
plot(mgodmani)

#Crop the raster file for bioclimatic variables
bio1.cg <- crop(bio1, extent(mgodmani))
bio1.cg <- mask(bio1.cg, mgodmani)
bio2.cg <- crop(bio2, extent(mgodmani))
bio2.cg <- mask(bio2.cg, mgodmani)
bio3.cg <- crop(bio3, extent(mgodmani))
bio3.cg <- mask(bio3.cg, mgodmani)
bio4.cg <- crop(bio4, extent(mgodmani))
bio4.cg <- mask(bio4.cg, mgodmani)
bio5.cg <- crop(bio5, extent(mgodmani))
bio5.cg <- mask(bio5.cg, mgodmani)
bio6.cg <- crop(bio6, extent(mgodmani))
bio6.cg <- mask(bio6.cg, mgodmani)
bio7.cg <- crop(bio7, extent(mgodmani))
bio7.cg <- mask(bio7.cg, mgodmani)
bio8.cg <- crop(bio8, extent(mgodmani))
bio8.cg <- mask(bio8.cg, mgodmani)
bio9.cg <- crop(bio9, extent(mgodmani))
bio9.cg <- mask(bio9.cg, mgodmani)
bio10.cg <- crop(bio10, extent(mgodmani))
bio10.cg <- mask(bio10.cg, mgodmani)
bio11.cg <- crop(bio11, extent(mgodmani))
bio11.cg <- mask(bio11.cg, mgodmani)
bio12.cg <- crop(bio12, extent(mgodmani))
bio12.cg <- mask(bio12.cg, mgodmani)
bio13.cg <- crop(bio13, extent(mgodmani))
bio13.cg <- mask(bio13.cg, mgodmani)
bio14.cg <- crop(bio14, extent(mgodmani))
bio14.cg <- mask(bio14.cg, mgodmani)
bio15.cg <- crop(bio15, extent(mgodmani))
bio15.cg <- mask(bio15.cg, mgodmani)
bio16.cg <- crop(bio16, extent(mgodmani))
bio16.cg <- mask(bio16.cg, mgodmani)
bio17.cg <- crop(bio17, extent(mgodmani))
bio17.cg <- mask(bio17.cg, mgodmani)
bio18.cg <- crop(bio18, extent(mgodmani))
bio18.cg <- mask(bio18.cg, mgodmani)
bio19.cg <- crop(bio19, extent(mgodmani))
bio19.cg <- mask(bio19.cg, mgodmani)

par(mfrow=c(5,4))

plot(bio1.cg)
plot(mgodmani, add = TRUE)
plot(bio2.cg)
plot(mgodmani, add = TRUE)
plot(bio3.cg)
plot(mgodmani, add = TRUE)
plot(bio4.cg)
plot(mgodmani, add = TRUE)
plot(bio5.cg)
plot(mgodmani, add = TRUE)
plot(bio6.cg)
plot(mgodmani, add = TRUE)
plot(bio8.cg)
plot(mgodmani, add = TRUE)
plot(bio9.cg)
plot(mgodmani, add = TRUE)
plot(bio10.cg)
plot(mgodmani, add = TRUE)
plot(bio11.cg)
plot(mgodmani, add = TRUE)
plot(bio12.cg)
plot(mgodmani, add = TRUE)
plot(bio13.cg)
plot(mgodmani, add = TRUE)
plot(bio14.cg)
plot(mgodmani, add = TRUE)
plot(bio15.cg)
plot(mgodmani, add = TRUE)
plot(bio16.cg)
plot(mgodmani, add = TRUE)
plot(bio17.cg)
plot(mgodmani, add = TRUE)
plot(bio18.cg)
plot(mgodmani, add = TRUE)
plot(bio19.cg)
plot(mgodmani, add = TRUE)

#saving the godmani climatic layers by ascii format

writeRaster (bio1.cg,filename="../data/croppresent_godmani/bio1",format="ascii")
writeRaster (bio2.cg,filename="../data/croppresent_godmani/bio2",format="ascii")
writeRaster (bio3.cg,filename="../data/croppresent_godmani/bio3",format="ascii")
writeRaster (bio4.cg,filename="../data/croppresent_godmani/bio4",format="ascii")
writeRaster (bio5.cg,filename="../data/croppresent_godmani/bio5",format="ascii")
writeRaster (bio6.cg,filename="../data/croppresent_godmani/bio6",format="ascii")
writeRaster (bio7.cg,filename="../data/croppresent_godmani/bio7",format="ascii")
writeRaster (bio8.cg,filename="../data/croppresent_godmani/bio8",format="ascii")
writeRaster (bio9.cg,filename="../data/croppresent_godmani/bio9",format="ascii")
writeRaster (bio10.cg,filename="../data/croppresent_godmani/bio10",format="ascii")
writeRaster (bio11.cg,filename="../data/croppresent_godmani/bio11",format="ascii")
writeRaster (bio12.cg,filename="../data/croppresent_godmani/bio12",format="ascii")
writeRaster (bio13.cg,filename="../data/croppresent_godmani/bio13",format="ascii")
writeRaster (bio14.cg,filename="../data/croppresent_godmani/bio14",format="ascii")
writeRaster (bio15.cg,filename="../data/croppresent_godmani/bio15",format="ascii")
writeRaster (bio16.cg,filename="../data/croppresent_godmani/bio16",format="ascii")
writeRaster (bio17.cg,filename="../data/croppresent_godmani/bio17",format="ascii")
writeRaster (bio18.cg,filename="../data/croppresent_godmani/bio18",format="ascii")
writeRaster (bio19.cg,filename="../data/croppresent_godmani/bio19",format="ascii")


################## Extracting values from raster ###################

subaff<-subset(dataaffinis, select= c(Longitud, Latitud))
subgod<-subset(datagodmani, select = c(Longitud, Latitud))

#bio1
affvaluesbio1 <- extract(bio1.c, subaff)
godvaluesbio1 <- extract(bio1.cg, subgod)
#bio2
affvaluesbio2 <- extract(bio2.c, subaff)
godvaluesbio2 <- extract(bio2.cg, subgod)
#bio3
affvaluesbio3 <- extract(bio3.c,subaff)
godvaluesbio3 <- extract(bio3.cg, subgod)
#bio4
affvaluesbio4 <- extract(bio4.c, subaff)
godvaluesbio4 <- extract(bio4.cg, subgod)
#bio5
affvaluesbio5 <- extract(bio5.c,subaff)
godvaluesbio5 <- extract(bio5.cg,subgod)
#bio6
affvaluesbio6 <- extract(bio6.c, subaff)
godvaluesbio6 <- extract(bio6.cg, subgod)
#bio7
affvaluesbio7 <- extract(bio7.c, subaff)
godvaluesbio7 <- extract(bio7.cg, subgod)
#bio8
affvaluesbio8 <- extract(bio8.c, subaff)
godvaluesbio8 <- extract(bio8.cg, subgod)
#bio9
affvaluesbio9 <- extract(bio9.c, subaff)
godvaluesbio9 <- extract(bio9.cg, subgod)
#bio10
affvaluesbio10 <- extract(bio10.c, subaff)
godvaluesbio10 <- extract(bio10.cg, subgod)
#bio11
affvaluesbio11 <- extract(bio11.c, subaff)
godvaluesbio11 <- extract(bio11.cg, subgod)
#bio12
affvaluesbio12 <- extract(bio12.c, subaff)
godvaluesbio12 <- extract(bio12.cg, subgod)
#bio13
affvaluesbio13 <- extract(bio13.c, subaff)
godvaluesbio13 <- extract(bio13.cg, subgod)
#bio14
affvaluesbio14 <- extract(bio14.c, subaff)
godvaluesbio14 <- extract(bio14.cg, subgod)
#bio15
affvaluesbio15 <- extract(bio15.c, subaff)
godvaluesbio15 <- extract(bio15.cg, subgod)
#bio16
affvaluesbio16 <- extract(bio16.c, subaff)
godvaluesbio16 <- extract(bio16.cg, subgod)
#bio17
affvaluesbio17 <- extract(bio17.c, subaff)
godvaluesbio17 <- extract(bio17.cg, subgod)
#bio18
affvaluesbio18 <- extract(bio18.c, subaff)
godvaluesbio18 <- extract(bio18.cg, subgod)
#bio19
affvaluesbio19 <- extract(bio19.c, subaff)
godvaluesbio19 <- extract(bio19.cg, subgod)

# Data frames 
affvalues<-cbind.data.frame(affvaluesbio1, affvaluesbio2, affvaluesbio3, affvaluesbio4, 
                            affvaluesbio5, affvaluesbio6, affvaluesbio7, affvaluesbio8, 
                            affvaluesbio9, affvaluesbio10, affvaluesbio11, affvaluesbio12,
                            affvaluesbio13, affvaluesbio14, affvaluesbio15, affvaluesbio16,
                            affvaluesbio17, affvaluesbio18, affvaluesbio19)


#Eliminating the NA values
affvalues <- na.omit(affvalues)
is.na.data.frame(affvalues)

godvalues<-cbind.data.frame(godvaluesbio1, godvaluesbio2, godvaluesbio3, godvaluesbio4,
                  godvaluesbio5, godvaluesbio6, godvaluesbio7, godvaluesbio8,
                  godvaluesbio9, godvaluesbio10, godvaluesbio11, godvaluesbio12,
                  godvaluesbio13, godvaluesbio14, godvaluesbio15, godvaluesbio16,
                  godvaluesbio17, godvaluesbio18, godvaluesbio19)

godvalues<-na.omit(godvalues)
is.na.data.frame(godvalues)


#saving the values in cvs format

write.csv(affvalues, file = "../data/affvalues.csv", row.names = F)
write.csv(godvalues, file = "../data/godvalues.csv", row.names = F)

## Pearson correlation
##A scatter plot of matrices, with bivariate scatter plots 
#below the diagonal, histograms on the diagonal,
#and the Pearson correlation above the diagonal. 


#Correlation matrix by Pearson method
x<-cor(affvalues, method = "pearson")
y<-cor(godvalues, method = "pearson")

#plot correlation by Pearson method
help(ecospat.cor.plot, package = "ecospat") #ecospat.cor.plot(data)
corr_a<-ecospat.cor.plot(affvalues)
corr_g<-ecospat.cor.plot(godvalues)

###########################################################################
#               Equivalency and similarity of ECOLOGICAL NICHE            #
#             modified from Broennimann et al., 2012                      #
#    Measuring ecological niche overlap from occurrence and spatial       #
#   environmental data Glob. Ecol. Biogeogr., 21 (2012), pp. 481-497      #
###########################################################################

# Clean points 
# af = E. a. affinis
# gd = E. a. godmani

af <- read.csv("../data/affinis_cleandata.csv", header=TRUE)
gd <- read.csv("../data/godmani_cleandata.csv", header=TRUE)

# The layers have to be cut by the relevant geographic area for the comparison of niches

setwd("../data/m_analisis broenimang/ascii/") 
varclim <- stack(list.files(pattern = "*.asc$",full.names = T)) 
resol <- res(varclim)[1]

# Generate a table that for each pixel (coordinate x, y) with the values of all environmental variables
climpunto <- rasterToPoints(varclim[[1]], fun=NULL, spatial=TRUE)

# Extract environmental data for each layer in varclim of each coordinate in climpoint
clim <- extract(varclim, climpunto)

# Format the clim table to be a normal table with two first columns x and y

clim <- data.frame(coordinates(climpunto),clim)
clim <- subset(clim, !is.na(bio3) & !is.na(bio5) & !is.na(bio6) & !is.na(bio7) & !is.na(bio8) 
               & !is.na(bio9) & !is.na(bio10) & !is.na(bio14) & !is.na(bio15) & !is.na(bio16) 
               & !is.na(bio17)& !is.na(bio18))

# Delete  points that are less than 1 km away
# If 1 grade = 111 km , so 1 km = 0.008333
occ.sp1 <- af[2:3]
occ.sp2 <- gd[2:3]

#Make a dataframe with the geographic points and enviromental values
occ_sp1<-na.exclude(ecospat.sample.envar(dfsp=occ.sp1,colspxy=1:2, 
                                         colspkept=1:2,dfvar=clim,
                                         colvarxy=1:2,colvar="all",resolution=0.008333))

occ_sp2<-na.exclude(ecospat.sample.envar(dfsp=occ.sp2,colspxy=1:2,
                                         colspkept=1:2,dfvar=clim, colvarxy=1:2,
                                         colvar="all",resolution=0.008333))

#Iterations 
iterations<-1000

# Enviromental resolution for the density presences 
R=100

########################################################################
#                                Enviromental PCA                      #
########################################################################

#PCA data for study area and species presence for two species
data<-rbind(clim[,3:14],occ_sp1[,3:14],occ_sp2[,3:14])

data <- subset(data, !is.na(bio3) & !is.na(bio5) & !is.na(bio6) & !is.na(bio7) & !is.na(bio8) 
               & !is.na(bio9) & !is.na(bio10) & !is.na(bio14) & !is.na(bio15) & !is.na(bio16) 
               & !is.na(bio17)& !is.na(bio18))

# 0 to ocurrences and 1 for study area
w<-c(rep(1,nrow(clim)),rep(0,nrow(occ_sp1)),rep(0,nrow(occ_sp2)))

# PCA with all the data for study area, the presence data will be calculate but not to calibrate PCA.
pca.cal <-dudi.pca(data, row.w = w, center = T, scale = T, scannf = F, nf = 2)

# Data clim and data species:
row.clim <- 1:nrow(clim)
row.sp1 <-  (1+nrow(clim)):(nrow(clim) + nrow(occ_sp1))
row.sp2 <-  (1 + nrow(clim) + nrow(occ_sp1)) : (nrow(clim) + nrow(occ_sp1) + nrow(occ_sp2))

pca.cal$lw
princomp(x, .)
# S3 method for formula
princomp(formula, data = NULL, subset, na.action, .)

# S3 method for default
pca1<-princomp(data, cor = FALSE, scores = TRUE, covmat = NULL,
               subset = rep_len(TRUE, nrow(as.matrix(x))), fix_sign = TRUE, .)
pc.cr <- princomp(data)
plot(pc.cr)
biplot(pc.cr)

summary(pca.cal)
summary(pc.cr)
# S3 method for princomp
predict(object, newdata, .)


# PCA coordinates for study area and species
scores.clim <- pca.cal$li[row.clim,] #all rowns
scores.sp1  <- pca.cal$li[row.sp1,]   #sp1
scores.sp2  <- pca.cal$li[row.sp2,]   #sp2


#Variable contribution for each variable to each PCA component
ecospat.plot.contrib(contrib=pca.cal$co, eigen=pca.cal$eig)

###Density ocurrence####

#Presence points  in the enviromental space
z1<-ecospat.grid.clim.dyn (scores.clim, scores.clim, scores.sp1, R=100) #Spp 1
z2<-ecospat.grid.clim.dyn (scores.clim, scores.clim, scores.sp2, R=100) #Spp 2


#Overlap statistics (D -  Schoener, I -  Warren)
ecospat.niche.overlap (z1=z1, z2=z2, cor=F)


#Graphical density ocurrence in enviromental space
windows() # en mac o windows() en PC
par(mfrow=c(1,2))
ecospat.plot.niche (z1, title="E. a. affinis", name.axis1="PC1", name.axis2="PC2", cor=F)
ecospat.plot.niche (z2, title="E. a. godmani", name.axis1="PC1", name.axis2="PC2", cor=F)

###############################################################
#               Equivalency niche test                        #
###############################################################

a.dyn<-ecospat.niche.equivalency.test(z1=z1 , z2=z2, rep=100)

#Niche equivalence 

windows()
ecospat.plot.overlap.test(a.dyn,"D","Equivalency")
ecospat.niche.overlap(z1, z2, cor= F)

###############################################################
#               Similarity niche test                         #
###############################################################

b.dyn_phor_phai<-ecospat.niche.similarity.test(z1=z1 , z2=z2, rep=100)
b.dyn_phor_phai2<-ecospat.niche.similarity.test(z1=z2 , z2=z1, rep=100)

#Similarity test with "D" value

par(mfrow=c(1,2))
ecospat.plot.overlap.test(b.dyn_phor_phai,"D","Similarity - E. a. affinis vs. E. a. godmani")
ecospat.plot.overlap.test(b.dyn_phor_phai2,"D","Similarity - E. a. affinis vs. E. a. godmani")

