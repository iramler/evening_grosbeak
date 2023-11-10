library(tidyverse)
library(motus)
library(lubridate)
library(rnaturalearth)
library(sf)
library(ggplot2)
library(scales)
library(lubridate)
library(ggforce)
library(dplyr)

# Set the system environment time zone to UTC (to ensure that you are always working in UTC)
Sys.setenv(TZ = "UTC")

setwd("C:/Users/degrootel/Documents/Motus/R files/Collision Motus/")

#outpath<-"./RSSI_recv_plots/"

dfWood<-readRDS("./data/dfWoodClean.RDS")


### remove missing receiver deployment data
dfWood<-dfWood %>%
  arrange(motusTagID, ts) %>%       # order by time stamp for each tag
  mutate(date = as_date(ts)) %>%    # create date variable
  filter(!is.na(recvDeployLat) | !(recvDeployLat == 0))

dfWood.fl<-dfWood %>%
  group_by(motusTagID,recvDeployName) %>%
  arrange(motusTagID,ts) %>%
  filter(row_number() %in% c(1, n())) %>%
  dplyr::select(speciesEN,motusTagID,mfgID,tagModel,tagBI,tagDepLat,tagDepLon,date,
                ts,recvDeployName,recvDeployLat,recvDeployLon)

write.csv(dfWood.fl,"./data/dfWood_fl.csv")
