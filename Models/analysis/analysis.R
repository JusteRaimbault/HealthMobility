
library(dplyr)
library(ggplot2)

setwd("/home/raimbault/ComplexSystems/HealthMobility/Models/analysis")

res <- as.tbl(read.csv('population48013.csv'))


g=ggplot(res,aes(x=maxProbaToSwitch,y=deltaHealth,color=inertiaCoefficient,group=inertiaCoefficient))
g+geom_point()+facet_grid(cut(healthyDietReward,5)~cut(interpersonalInfluence,5))








