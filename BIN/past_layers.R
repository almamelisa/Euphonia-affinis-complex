######## CUTTING THE PAST LAYERS ########

#LOADIG THE PRESENT LAYERS AS RASTER OBJECT

BIO3<-raster("../data/shapes/bio_3.bil")
BIO5<-raster("../data/shapes/bio_5.bil")
BIO6<-raster("../data/shapes/bio_6.bil")
BIO7<-raster("../data/shapes/bio_7.bil")
BIO8<-raster("../data/shapes/bio_8.bil")
BIO9<-raster("../data/shapes/bio_9.bil")
BIO10<-raster("../data/shapes/bio_10.bil")
BIO14<-raster("../data/shapes/bio_14.bil")
BIO15<-raster("../data/shapes/bio_15.bil")
BIO16<-raster("../data/shapes/bio_17.bil")
BIO17<-raster("../data/shapes/bio_17.bil")
BIO18<-raster("../data/shapes/bio_18.bil")

BIO3

######## LGM_MR #################

#LOADING THE LGM LAYERS AS RASTER OBJECT

LGM_MR_BIO3<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi3.tif")
LGM_MR_BIO5<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi5.tif")
LGM_MR_BIO6<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi6.tif")
LGM_MR_BIO7<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi7.tif")
LGM_MR_BIO8<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi8.tif")
LGM_MR_BIO9<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi9.tif")
LGM_MR_BIO10<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi10.tif")
LGM_MR_BIO14<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi14.tif")
LGM_MR_BIO15<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi15.tif")
LGM_MR_BIO16<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi16.tif")
LGM_MR_BIO17<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi17.tif")
LGM_MR_BIO18<-raster("../data/mrlgmbi_2-5m_LMG/mrlgmbi18.tif")

#cheking features
LGM_MR_BIO3
compareRaster(LGM_MR_BIO3,BIO3)

#resampling the layers
resample(rs9pas,refpres)

LGM_MR_BIO3<-resample(LGM_MR_BIO3, BIO3)
LGM_MR_BIO5<-resample(LGM_MR_BIO5, BIO5)
LGM_MR_BIO6<-resample(LGM_MR_BIO6, BIO6)
LGM_MR_BIO7<-resample(LGM_MR_BIO7, BIO7)
LGM_MR_BIO8<-resample(LGM_MR_BIO8, BIO8)
LGM_MR_BIO9<-resample(LGM_MR_BIO9, BIO9)
LGM_MR_BIO10<-resample(LGM_MR_BIO10, BIO10)
LGM_MR_BIO14<-resample(LGM_MR_BIO14, BIO14)
LGM_MR_BIO15<-resample(LGM_MR_BIO15, BIO15)
LGM_MR_BIO16<-resample(LGM_MR_BIO16, BIO16)
LGM_MR_BIO17<-resample(LGM_MR_BIO17, BIO17)
LGM_MR_BIO18<-resample(LGM_MR_BIO18, BIO18)

#comparing feautures
compareRaster(LGM_MR_BIO3,BIO3)

#CUTTING THE NEW LAYERS 

LGM_MR_BIO3<-crop(LGM_MR_BIO3,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO3)
LGM_MR_BIO5<-crop(LGM_MR_BIO5,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO5)
LGM_MR_BIO6<-crop(LGM_MR_BIO6,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO6)
LGM_MR_BIO7<-crop(LGM_MR_BIO7,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO7)
LGM_MR_BIO8<-crop(LGM_MR_BIO8,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO8)
LGM_MR_BIO9<-crop(LGM_MR_BIO9,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO9)
LGM_MR_BIO10<-crop(LGM_MR_BIO10,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO10)
LGM_MR_BIO14<-crop(LGM_MR_BIO14,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO14)
LGM_MR_BIO15<-crop(LGM_MR_BIO15,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO15)
LGM_MR_BIO16<-crop(LGM_MR_BIO16,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO16)
LGM_MR_BIO17<-crop(LGM_MR_BIO17,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO17)
LGM_MR_BIO18<-crop(LGM_MR_BIO18,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_MR_BIO18)

#SAVING THE LAYERS IN ASCII FORMAT

writeRaster (LGM_MR_BIO3,filename="../data/crop_mrlgm/lgm_mr_BIO3",format="ascii")
writeRaster (LGM_MR_BIO5,filename="../data/crop_mrlgm/lgm_mr_BIO5",format="ascii")
writeRaster (LGM_MR_BIO6,filename="../data/crop_mrlgm/lgm_mr_BIO6",format="ascii")
writeRaster (LGM_MR_BIO7,filename="../data/crop_mrlgm/lgm_mr_BIO7",format="ascii")
writeRaster (LGM_MR_BIO8,filename="../data/crop_mrlgm/lgm_mr_BIO8",format="ascii")
writeRaster (LGM_MR_BIO9,filename="../data/crop_mrlgm/lgm_mr_BIO9",format="ascii")
writeRaster (LGM_MR_BIO10,filename="../data/crop_mrlgm/lgm_mr_BIO10",format="ascii")
writeRaster (LGM_MR_BIO14,filename="../data/crop_mrlgm/lgm_mr_BIO14",format="ascii")
writeRaster (LGM_MR_BIO15,filename="../data/crop_mrlgm/lgm_mr_BIO15",format="ascii")
writeRaster (LGM_MR_BIO16,filename="../data/crop_mrlgm/lgm_mr_BIO16",format="ascii")
writeRaster (LGM_MR_BIO17,filename="../data/crop_mrlgm/lgm_mr_BIO17",format="ascii")
writeRaster (LGM_MR_BIO18,filename="../data/crop_mrlgm/lgm_mr_BIO18",format="ascii")

########### LGM_CC ##########

#LOADING THE RASTER LAYERS

LGM_CC_BIO3<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi3.tif")
LGM_CC_BIO5<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi5.tif")
LGM_CC_BIO6<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi6.tif")
LGM_CC_BIO7<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi7.tif")
LGM_CC_BIO8<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi8.tif")
LGM_CC_BIO9<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi9.tif")
LGM_CC_BIO10<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi10.tif")
LGM_CC_BIO14<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi14.tif")
LGM_CC_BIO15<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi15.tif")
LGM_CC_BIO16<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi16.tif")
LGM_CC_BIO17<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi17.tif")
LGM_CC_BIO18<-raster("../data/cclgmbi_2-5m_LMG/cclgmbi18.tif")

#CHECKING FEATURES
LGM_CC_BIO3
compareRaster(LGM_CC_BIO3,BIO3) #comparing the features between past and present layers

#resampling the layers

LGM_CC_BIO3<-resample(LGM_CC_BIO3, BIO3)
LGM_CC_BIO5<-resample(LGM_CC_BIO5, BIO5)
LGM_CC_BIO6<-resample(LGM_CC_BIO6, BIO6)
LGM_CC_BIO7<-resample(LGM_CC_BIO7, BIO7)
LGM_CC_BIO8<-resample(LGM_CC_BIO8, BIO8)
LGM_CC_BIO9<-resample(LGM_CC_BIO9, BIO9)
LGM_CC_BIO10<-resample(LGM_CC_BIO10, BIO10)
LGM_CC_BIO14<-resample(LGM_CC_BIO14, BIO14)
LGM_CC_BIO15<-resample(LGM_CC_BIO15, BIO15)
LGM_CC_BIO16<-resample(LGM_CC_BIO16, BIO16)
LGM_CC_BIO17<-resample(LGM_CC_BIO17, BIO17)
LGM_CC_BIO18<-resample(LGM_CC_BIO18, BIO18)

#CHECKING FEATURES
LGM_CC_BIO3
compareRaster(LGM_CC_BIO3,BIO3) #comparing the features between past and present layers

#CUTTING THE NEW LAYERS 

LGM_CC_BIO3<-crop(LGM_CC_BIO3,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO3)
LGM_CC_BIO5<-crop(LGM_CC_BIO5,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO5)
LGM_CC_BIO6<-crop(LGM_CC_BIO6,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO6)
LGM_CC_BIO7<-crop(LGM_CC_BIO7,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO7)
LGM_CC_BIO8<-crop(LGM_CC_BIO8,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO8)
LGM_CC_BIO9<-crop(LGM_CC_BIO9,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO9)
LGM_CC_BIO10<-crop(LGM_CC_BIO10,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO10)
LGM_CC_BIO14<-crop(LGM_CC_BIO14,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO14)
LGM_CC_BIO15<-crop(LGM_CC_BIO15,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO15)
LGM_CC_BIO16<-crop(LGM_CC_BIO16,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO16)
LGM_CC_BIO17<-crop(LGM_CC_BIO17,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO17)
LGM_CC_BIO18<-crop(LGM_CC_BIO18,c(-111.775,-75.19167,7.0,31.0916))
plot(LGM_CC_BIO18)

#SAVING THE LAYERS IN ASCII FORMAT

writeRaster (LGM_CC_BIO3,filename="../data/crop_CClgm/lgm_cc_BIO3",format="ascii")
writeRaster (LGM_CC_BIO5,filename="../data/crop_CClgm/lgm_cc_BIO5",format="ascii")
writeRaster (LGM_CC_BIO6,filename="../data/crop_CClgm/lgm_cc_BIO6",format="ascii")
writeRaster (LGM_CC_BIO7,filename="../data/crop_CClgm/lgm_cc_BIO7",format="ascii")
writeRaster (LGM_CC_BIO8,filename="../data/crop_CClgm/lgm_cc_BIO8",format="ascii")
writeRaster (LGM_CC_BIO9,filename="../data/crop_cclgm/lgm_cc_BIO9",format="ascii")
writeRaster (LGM_CC_BIO10,filename="../data/crop_CClgm/lgm_cc_BIO10",format="ascii")
writeRaster (LGM_CC_BIO14,filename="../data/crop_CClgm/lgm_cc_BIO14",format="ascii")
writeRaster (LGM_CC_BIO15,filename="../data/crop_CClgm/lgm_cc_BIO15",format="ascii")
writeRaster (LGM_CC_BIO16,filename="../data/crop_CClgm/lgm_cc_BIO16",format="ascii")
writeRaster (LGM_CC_BIO17,filename="../data/crop_CClgm/lgm_cc_BIO17",format="ascii")
writeRaster (LGM_CC_BIO18,filename="../data/crop_CClgm/lgm_cc_BIO18",format="ascii")

########### LIG ##########

#LOADING THE RASTER LAYERS

LIG_BIO3<-raster("../data/lig_30s_bio/lig_30s_bio_3.bil")
LIG_BIO5<-raster("../data/lig_30s_bio/lig_30s_bio_5.bil")
LIG_BIO6<-raster("../data/lig_30s_bio/lig_30s_bio_6.bil")
LIG_BIO7<-raster("../data/lig_30s_bio/lig_30s_bio_7.bil")
LIG_BIO8<-raster("../data/lig_30s_bio/lig_30s_bio_8.bil")
LIG_BIO9<-raster("../data/lig_30s_bio/lig_30s_bio_9.bil")
LIG_BIO10<-raster("../data/lig_30s_bio/lig_30s_bio_10.bil")
LIG_BIO14<-raster("../data/lig_30s_bio/lig_30s_bio_14.bil")
LIG_BIO15<-raster("../data/lig_30s_bio/lig_30s_bio_15.bil")
LIG_BIO16<-raster("../data/lig_30s_bio/lig_30s_bio_16.bil")
LIG_BIO17<-raster("../data/lig_30s_bio/lig_30s_bio_17.bil")
LIG_BIO18<-raster("../data/lig_30s_bio/lig_30s_bio_18.bil")


#CUTTING THE NEW LAYERS 

LIG_BIO3<-crop(LIG_BIO3,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO3)
LIG_BIO5<-crop(LIG_BIO5,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO5)
LIG_BIO6<-crop(LIG_BIO6,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO6)
LIG_BIO7<-crop(LIG_BIO7,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO7)
LIG_BIO8<-crop(LIG_BIO8,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO8)
LIG_BIO9<-crop(LIG_BIO9,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO9)
LIG_BIO10<-crop(LIG_BIO10,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO10)
LIG_BIO14<-crop(LIG_BIO14,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO14)
LIG_BIO15<-crop(LIG_BIO15,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO15)
LIG_BIO16<-crop(LIG_BIO16,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO16)
LIG_BIO17<-crop(LIG_BIO17,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO17)
LIG_BIO18<-crop(LIG_BIO18,c(-111.775,-75.19167,7.0,31.0916))
plot(LIG_BIO18)

#SAVING THE LAYERS IN ASCII FORMAT


writeRaster (LIG_BIO3,filename="../data/crop_lig/lig_BIO3",format="ascii")
writeRaster (LIG_BIO5,filename="../data/crop_lig/lig_BIO5",format="ascii")
writeRaster (LIG_BIO6,filename="../data/crop_lig/lig_BIO6",format="ascii")
writeRaster (LIG_BIO7,filename="../data/crop_lig/lig_BIO7",format="ascii")
writeRaster (LIG_BIO8,filename="../data/crop_lig/lig_BIO8",format="ascii")
writeRaster (LIG_BIO9,filename="../data/crop_lig/lig_BIO9",format="ascii")
writeRaster (LIG_BIO10,filename="../data/crop_lig/lig_BIO10",format="ascii")
writeRaster (LIG_BIO14,filename="../data/crop_lig/lig_BIO14",format="ascii")
writeRaster (LIG_BIO15,filename="../data/crop_lig/lig_BIO15",format="ascii")
writeRaster (LIG_BIO16,filename="../data/crop_lig/lig_BIO16",format="ascii")
writeRaster (LIG_BIO17,filename="../data/crop_lig/lig_BIO17",format="ascii")
writeRaster (LIG_BIO18,filename="../data/crop_lig/lig_BIO18",format="ascii")
