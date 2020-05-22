library(dplyr)
library(ggplot2)
library(ggfortify)
library(ggpubr)
#Load required libraries

setwd(readClipboard())
#Copied the route to the working directory, using readClipboard() because Windows is weird about backslashes.

eup <-  read.csv("Euphonia_song_measurements.csv")
df  <- eup[,3:8]
#Reading the selection table generated from Raven PRO. 

pca <- princomp(log(df))

pcaload <- pca$loadings

#Principal Component Analysis on log-transformed data, putting the loadings in a new object so it's easy to check later. 

wilcox.test(data=eup, LowFreq~Sub)
wilcox.test(data=eup, HiFreq~Sub)
wilcox.test(data=eup, DeltaT~Sub)
wilcox.test(data=eup, DeltaF~Sub)
wilcox.test(data=eup, Notes~Sub)
wilcox.test(data=eup, Speed~Sub)

#Wilcoxon tests on individual variables


p1 <-   ggplot(data=eup, aes(x=Sub, y=Speed))+stat_boxplot(geom='errorbar') +geom_boxplot(aes(fill=Sub))+scale_fill_manual(values=c("#FAF077","#4977BB")) +theme_bw() + ylab("Notes / second") +ggtitle("Boxplot of emission rate") + scale_x_discrete(labels=c("E. a. affinis", "E. a. godmani")) + xlab(NULL)+theme(legend.position = 'none')
p1 + font('x.text', family='serif', face='italic')

#Boxplot of notes per second (emission rate), by subspecies. 

p2 <- autoplot(pca, loadings=TRUE, loadings.colour='black', loadings.label=TRUE, loadings.label.colour='black', loadings.label.size=2.5, data=eup, colour='Sub', shape = 'Sub', frame=TRUE)+scale_fill_manual(labels=c("E. a. affinis", "E. a. godmani"), values=c("#FAF077","#4977BB")) + scale_color_manual(values=c("#FAF077","#4977BB")) + theme_bw()
p1 +font('legend.text', family='serif', face='italic')

#PCA biplot of the first two PCs. 

