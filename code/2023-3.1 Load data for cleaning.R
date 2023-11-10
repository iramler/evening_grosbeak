

library(tidyverse)
library(motus)
library(lubridate)
library(rnaturalearth)
library(sf)
library(ggplot2)
library(scales)
library(lubridate)
library(ggforce)

# Set the system environment time zone to UTC (to ensure that you are always working in UTC)
Sys.setenv(TZ = "UTC")

setwd("C:/Users/degrootel/Documents/Motus/R files/Collision Motus/")

outpath<-"./RSSI_recv_plots/"

colldata<-readRDS("./data/df_cswg.RDS")



#########################################
### Single tag plots

### tags detected 
tagIDs<-colldata %>%
  count(motusTagID)
  
  

nrow(tagIDs)