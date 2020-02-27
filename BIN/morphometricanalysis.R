############################################################################################
#                    Morphometric analyses with raw data and log data                      #
############################################################################################

#Loading libraries#
library(factoextra)
library(FactoMineR)

#####Script morphometric analysis#######

#load database
affinis<-read.delim("../data/morphometricdata.csv", header = TRUE, sep = ",")
str(affinis)

#delates NA#
affinis<-na.omit(affinis)
str(affinis)

####Make subsets by sex and lineage####

females<-subset(affinis, affinis$SEX=="F")
femalesaffinis<-subset(females,females$LINEAGE=="affinis")
femalesgodmani<-subset(females,females$LINEAGE=="godmani")
males<-subset(affinis,affinis$SEX=="M")
malesaffinis<-subset(males,males$LINEAGE=="affinis")
malesgodmani<-subset(males,males$LINEAGE=="godmani")
todoaffinis<-subset(affinis, affinis$LINEAGE=="affinis")
todogodmani<-subset(affinis, affinis$LINEAGE=="godmani")



#################################################################
##         SEX DIFFENCES INTO E. a. affinis                    ##
#################################################################

#finding differences between males vs. females in E. a. affinis
#females normality

shapiro.test(log10(femalesaffinis$TL))
shapiro.test(log10(femalesaffinis$WC))
shapiro.test(log10(femalesaffinis$TLE))
shapiro.test(log10(femalesaffinis$BD))
shapiro.test(log10(femalesaffinis$BL))
shapiro.test(log10(femalesaffinis$BW))

shapiro.test(femalesaffinis$TL)
shapiro.test(femalesaffinis$WC)
shapiro.test(femalesaffinis$TLE)
shapiro.test(femalesaffinis$BD)
shapiro.test(femalesaffinis$BL)
shapiro.test(femalesaffinis$BW)

#males normality

shapiro.test(log10(malesaffinis$TL))
shapiro.test(log10(malesaffinis$WC))
shapiro.test(log10(malesaffinis$TLE))
shapiro.test(log10(malesaffinis$BD))
shapiro.test(log10(malesaffinis$BL))
shapiro.test(log10(malesaffinis$BW))

shapiro.test(malesaffinis$TL)
shapiro.test(malesaffinis$WC)
shapiro.test(malesaffinis$TLE)
shapiro.test(malesaffinis$BD)
shapiro.test(malesaffinis$BL)
shapiro.test(malesaffinis$BW)

#Homogenity variance between sex (males vs females) into affinis#
fligner.test(log10(todoaffinis$TL) ~ todoaffinis$SEX)
fligner.test(log10(todoaffinis$WC) ~ todoaffinis$SEX)
fligner.test(log10(todoaffinis$TLE) ~ todoaffinis$SEX)
fligner.test(log10(todoaffinis$BD) ~ todoaffinis$SEX)
fligner.test(log10(todoaffinis$BL) ~ todoaffinis$SEX)
fligner.test(log10(todoaffinis$BW) ~ todoaffinis$SEX)

fligner.test(todoaffinis$TL ~ todoaffinis$SEX)
fligner.test(todoaffinis$WC ~ todoaffinis$SEX)
fligner.test(todoaffinis$TLE ~ todoaffinis$SEX)
fligner.test(todoaffinis$BD ~ todoaffinis$SEX)
fligner.test(todoaffinis$BL ~ todoaffinis$SEX)
fligner.test(todoaffinis$BW ~ todoaffinis$SEX)

#falta la t O WILCOX

wilcox.test(log10(todoaffinis$TL)~todoaffinis$SEX)
wilcox.test(log10(todoaffinis$WC)~todoaffinis$SEX)
wilcox.test(log10(todoaffinis$BD)~todoaffinis$SEX)
wilcox.test(log10(todoaffinis$BL)~todoaffinis$SEX)
wilcox.test(log10(todoaffinis$TLE)~todoaffinis$SEX)
wilcox.test(log10(todoaffinis$BW)~todoaffinis$SEX)

wilcox.test(todoaffinis$TL~todoaffinis$SEX)
wilcox.test(todoaffinis$WC~todoaffinis$SEX)
wilcox.test(todoaffinis$BD~todoaffinis$SEX)
wilcox.test(todoaffinis$BL~todoaffinis$SEX)
wilcox.test(todoaffinis$TLE~todoaffinis$SEX)
wilcox.test(todoaffinis$BW~todoaffinis$SEX)

#################################################################
##         SEX DIFERENCES INTO E. a. godmani                   ##
#################################################################

#finding differences between males vs. females in E. a. godmani

#females normality

shapiro.test(log10(femalesgodmani$TL))
shapiro.test(log10(femalesgodmani$WC))
shapiro.test(log10(femalesgodmani$TLE))
shapiro.test(log10(femalesgodmani$BD))
shapiro.test(log10(femalesgodmani$BL))
shapiro.test(log10(femalesgodmani$BW))

shapiro.test(femalesgodmani$TL)
shapiro.test(femalesgodmani$WC)
shapiro.test(femalesgodmani$TLE)
shapiro.test(femalesgodmani$BD)
shapiro.test(femalesgodmani$BL)
shapiro.test(femalesgodmani$BW)


#males normality

shapiro.test(log10(malesgodmani$TL))
shapiro.test(log10(malesgodmani$WC))
shapiro.test(log10(malesgodmani$TLE))
shapiro.test(log10(malesgodmani$BD))
shapiro.test(log10(malesgodmani$BL))
shapiro.test(log10(malesgodmani$BW))

shapiro.test(malesgodmani$TL)
shapiro.test(malesgodmani$WC)
shapiro.test(malesgodmani$TLE)
shapiro.test(malesgodmani$BD)
shapiro.test(malesgodmani$BL)
shapiro.test(malesgodmani$BW)

#Homogenity variance between sex (males vs females) into affinis#
fligner.test(log10(todogodmani$TL) ~ todogodmani$SEX)
fligner.test(log10(todogodmani$WC) ~ todogodmani$SEX)
fligner.test(log10(todogodmani$TLE) ~ todogodmani$SEX)
fligner.test(log10(todogodmani$BD) ~ todogodmani$SEX)
fligner.test(log10(todogodmani$BL) ~ todogodmani$SEX)
fligner.test(log10(todogodmani$BW) ~ todogodmani$SEX)

fligner.test(todogodmani$TL ~ todogodmani$SEX)
fligner.test(todogodmani$WC ~ todogodmani$SEX)
fligner.test(todogodmani$TLE ~ todogodmani$SEX)
fligner.test(todogodmani$BD ~ todogodmani$SEX)
fligner.test(todogodmani$BL ~ todogodmani$SEX)
fligner.test(todogodmani$BW ~ todogodmani$SEX)

#WILCOX 
wilcox.test(log10(todogodmani$TL) ~ todogodmani$SEX)
wilcox.test(log10(todogodmani$WC) ~ todogodmani$SEX)
wilcox.test(log10(todogodmani$TLE) ~ todogodmani$SEX)
wilcox.test(log10(todogodmani$BD) ~ todogodmani$SEX)
wilcox.test(log10(todogodmani$BL) ~ todogodmani$SEX)
wilcox.test(log10(todogodmani$BW) ~ todogodmani$SEX)

wilcox.test(todogodmani$TL ~ todogodmani$SEX)
wilcox.test(todogodmani$WC ~ todogodmani$SEX)
wilcox.test(todogodmani$TLE ~ todogodmani$SEX)
wilcox.test(todogodmani$BD ~ todogodmani$SEX)
wilcox.test(todogodmani$BL ~ todogodmani$SEX)
wilcox.test(todogodmani$BW ~ todogodmani$SEX)



#################################################################
##         LINEAGES DIFFENCES USING BOTH SEX                   ##
#################################################################

#finding differences between lineages affinis vs. godmani 
#using both sex

#affinis normality 

shapiro.test(log10(todoaffinis$TL))
shapiro.test(log10(todoaffinis$BL))
shapiro.test(log10(todoaffinis$BW))

shapiro.test(todoaffinis$TL)
shapiro.test(todoaffinis$BL)
shapiro.test(todoaffinis$BW)

#godmani normality

shapiro.test(log10(todogodmani$TL))
shapiro.test(log10(todogodmani$BL))
shapiro.test(log10(todogodmani$BW))

shapiro.test(todogodmani$TL)
shapiro.test(todogodmani$BL)
shapiro.test(todogodmani$BW)

#Homogenity variance between lineages (affinis vs. godmani) 
#both sex#

fligner.test(log10(affinis$TL) ~ affinis$LINEAGE)
fligner.test(log10(affinis$BL) ~ affinis$LINEAGE)
fligner.test(log10(affinis$BW) ~ affinis$LINEAGE)

fligner.test(affinis$TL ~ affinis$LINEAGE)
fligner.test(affinis$BL ~ affinis$LINEAGE)
fligner.test(affinis$BW ~ affinis$LINEAGE)

#wilcox test##

wilcox.test(log10(affinis$TL) ~ affinis$LINEAGE)
wilcox.test(log10(affinis$BL) ~ affinis$LINEAGE)
wilcox.test(log10(affinis$BW) ~ affinis$LINEAGE)

wilcox.test(affinis$TL ~ affinis$LINEAGE)
wilcox.test(affinis$BL ~ affinis$LINEAGE)
wilcox.test(affinis$BW ~ affinis$LINEAGE)


#boxplot with raw data

par(mfrow=c(1,3))
boxplot(affinis$TL~affinis$LINEAGE, ylab="TL (mm)", boxfill= c("gray22", "gray74"), data=females,  names=F, notch= T)
boxplot(affinis$BL~affinis$LINEAGE, ylab="BL (mm)", boxfill= c("gray22", "gray74"), data=females, names=F, notch= T)
boxplot(affinis$BW~affinis$LINEAGE, ylab="BW (mm)", boxfill= c("gray22", "gray74"), data=females, names= F, notch= T)


########################################################################
####               Principal Component Analysis                        #
########################################################################

par(mfrow=c(1,1))

todospca<-subset(affinis, select = c(TL, BL, BW))
todospca<-
#pca WITH FACTOMINER
bothsexpca<- PCA(todospca, scale.unit = T, graph = FALSE)
bothsexpca

#Visualize eigenvalues (scree plot). Show the percentage of variances explained by each principal component.
get_eig(bothsexpca)
fviz_eig(bothsexpca)
fviz_screeplot(bothsexpca, addlabes = TRUE, ylim = c(0, 50)) 
vartodos<-get_pca_var(bothsexpca)
vartodos
head(vartodos$coord)
head(vartodos$contrib)
bothsexpca$eig
#graph of variables
fviz_pca_var(bothsexpca, col.var = "contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"))+
  theme_bw()+
  labs(title = "CONTRIBUTION VARIABLES PCA FOR TL, BL AND BW")

####PCA graphics#########
fviz_pca_biplot(bothsexpca, 
                col.ind = affinis$LINEAGE, palette = c("gray22", "gray74"), 
                addEllipses = TRUE, ellipse.type="convex", label = "var",
                col.var = "black", repel = T,title = "PCA TL, BL, BW",
                legend.title = "Lineage", pointsize = 4)


#################################################################
##         LINEAGES DIFFENCES USING FEMALES                    ##
#################################################################

#finding differences between lineages affinis vs. godmani in females

#affinis females normality 

shapiro.test(log10(femalesaffinis$WC))
shapiro.test(log10(femalesaffinis$TLE))
shapiro.test(log10(femalesaffinis$BD))

shapiro.test(femalesaffinis$WC)
shapiro.test(femalesaffinis$TLE)
shapiro.test(femalesaffinis$BD)

#godmani females normality

shapiro.test(log10(femalesgodmani$WC))
shapiro.test(log10(femalesgodmani$TLE))
shapiro.test(log10(femalesgodmani$BD))

shapiro.test(femalesgodmani$WC)
shapiro.test(femalesgodmani$TLE)
shapiro.test(femalesgodmani$BD)

#Homogenity variance between lineages (affinis vs. godmani) 
#### FELMALES #######

fligner.test(log10(females$WC) ~ females$LINEAGE)
fligner.test(log10(females$TLE) ~ females$LINEAGE)
fligner.test(log10(females$BD) ~ females$LINEAGE)

fligner.test(females$WC ~ females$LINEAGE)
fligner.test(females$TLE ~ females$LINEAGE)
fligner.test(females$BD ~ females$LINEAGE)

# Wilcox test ##

wilcox.test(log10(females$WC) ~ females$LINEAGE)
wilcox.test(log10(females$TLE) ~ females$LINEAGE)
wilcox.test(log10(females$BD) ~ females$LINEAGE)

wilcox.test(females$WC ~ females$LINEAGE)
wilcox.test(females$TLE ~ females$LINEAGE)
wilcox.test(females$BD~ females$LINEAGE)
t.test(females$BD~ females$LINEAGE)

###Boxplot of E. a. affinis vs. E. a. godmani females ####

#boxplot with raw data
par(mfrow=c(1,3))
boxplot(females$WC~females$LINEAGE, ylab="WC (mm)", boxfill= c("gray22", "gray74"), data=females, names=F, notch= T)
boxplot(females$TLE~females$LINEAGE, ylab="TLE (mm)", boxfill= c("gray22", "gray74"), data=females, names=F, notch= T)
boxplot(females$BD~females$LINEAGE, ylab="BD (mm)", boxfill= c("gray22", "gray74"), data=females, names=F, notch= T)


########################################################################
####      Principal Component Analysis for females                     #
########################################################################

par(mfrow=c(1,1))

femalespca<-subset(females, select = c(WC, TLE, BD))

#pca WITH FACTOMINER
pcafemales <- PCA(femalespca, scale.unit = T, graph = FALSE)
pcafemales

#Visualize eigenvalues (scree plot). Show the percentage of variances explained by each principal component.
get_eig(pcafemales)
fviz_eig(pcafemales)
fviz_screeplot(pcafemales, addlabes = TRUE, ylim = c(0, 50)) 
varfemales<-get_pca_var(pcafemales)
varfemales
head(varfemales$coord)
head(varfemales$contrib)
pcafemales$eig
#graph of variables
fviz_pca_var(pcafemales, col.var = "contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"))+
  theme_bw()+
  labs(title = "CONTRIBUTION VARIABLES FEMALES")

####PCA graphics#########
fviz_pca_biplot(pcafemales, 
                col.ind = females$LINEAGE, palette = c("gray22", "gray74"), 
                addEllipses = TRUE, ellipse.type= "convex", label = "var",
                col.var = "black", repel = T,title = "Females PCA",
                legend.title = "Lineage", pointsize = 4)



#################################################################
##         LINEAGES DIFFENCES USING MALES                      ##
#################################################################

#finding differences between lineages affinis vs. godmani in females

#affinis males normality 

shapiro.test(log10(malesaffinis$WC))
shapiro.test(log10(malesaffinis$TLE))
shapiro.test(log10(malesaffinis$BD))

shapiro.test(malesaffinis$WC)
shapiro.test(malesaffinis$TLE)
shapiro.test(malesaffinis$BD)

#godmani males normality

shapiro.test(log10(malesgodmani$WC))
shapiro.test(log10(malesgodmani$TLE))
shapiro.test(log10(malesgodmani$BD))

shapiro.test(malesgodmani$WC)
shapiro.test(malesgodmani$TLE)
shapiro.test(malesgodmani$BD)


#Homogenity variance between lineages (affinis vs. godmani) 
#### MALES #######

fligner.test(log10(males$WC) ~ males$LINEAGE)
fligner.test(log10(males$TLE) ~ males$LINEAGE)
fligner.test(log10(males$BD) ~ males$LINEAGE)

fligner.test(males$WC ~ males$LINEAGE)
fligner.test(males$TLE ~ males$LINEAGE)
fligner.test(males$BD ~ males$LINEAGE)


# Wilcox test ##

wilcox.test(log10(males$WC) ~ males$LINEAGE)
wilcox.test(log10(males$TLE) ~ males$LINEAGE)
wilcox.test(log10(males$BD) ~ males$LINEAGE)

wilcox.test(males$WC ~ males$LINEAGE)
wilcox.test(males$TLE ~ males$LINEAGE)
wilcox.test(males$BD ~ males$LINEAGE)


###Boxplot of E. a. affinis vs. E. a. godmani males ####


#boxplot with raw data
par(mfrow=c(1,3))
boxplot(males$WC~males$LINEAGE, ylab="WC (mm)", boxfill= c("gray22", "gray74"), data=males, names=F, notch= T)
boxplot(males$TLE~males$LINEAGE, ylab="TLE (mm)", boxfill= c("gray22", "gray74"), data=males, names=F, notch= T)
boxplot(males$BD~males$LINEAGE, ylab="BD (mm)", boxfill= c("gray22", "gray74"), data=males, names=F, notch= T)

#####################################################################################
#                  Principal Component analysis for males                           #
#####################################################################################


#### Principal Component Analysis males ####
par(mfrow=c(1,1))

malespca<-subset(males, select = c(WC,TLE,BD))

#pca WITH FACTOMINER
pcamales <- PCA(malespca, scale.unit = T, graph = FALSE)
pcamales

#Visualize eigenvalues (scree plot). Show the percentage of variances explained by each principal component.
get_eig(pcamales)
fviz_eig(pcamales)
fviz_screeplot(pcamales, addlabes = TRUE, ylim = c(0, 50))
varmales<-get_pca_var(pcamales)
varmales
head(varmales$coord)
head(varmales$contrib)
pcamales$eig
#graph of variables
fviz_pca_var(pcamales, col.var = "contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"))+
  theme_bw()+
  labs(title = "CONTRIBUTION VARIABLES MALES")

####PCA graphics#########3
fviz_pca_biplot(pcamales, 
                col.ind = males$LINEAGE, palette = c("gray22", "gray74"), 
                addEllipses = TRUE, ellipse.type= "convex",label = "var",
                col.var = "black", repel = TRUE, title = "Males PCA",
                legend.title = "Lineage", pointsize= 4)


