library(moveVis)
library(move)
library(lubridate)

setwd("C:/Users/degrootel/Documents/Motus/R files/Collision Motus/")

dfWood<-readRDS("./data/dfWoodClean.RDS")

### remove missing receiver deployment data
dfWood<-dfWood %>%
  arrange(ts) %>%       # order by time stamp 
  mutate(date = as_date(ts)) %>%    # create date variable
  filter(!is.na(recvDeployLat) | !(recvDeployLat == 0)) %>%  # remove deployments without lat long
  dplyr::select(speciesEN,motusTagID,mfgID,tagModel,tagBI,tagDepLat,tagDepLon,date,
                ts,recvDeployName,recvDeployLat,recvDeployLon)                        # select fewer columns

dfWood$sp_tag<-paste0(ifelse(dfWood$speciesEN=="Wood Thrush","WOTH_","AMWO_"),dfWood$motusTagID)

dfWood$ts<-as.POSIXct(dfWood$ts, format="%Y-%m-%d %H:%M:%OS", tz="UTC")  #make sure in correct date format

dfWood <- dfWood[!duplicated(dfWood$ts),] #remove duplicate timestamp

dfWood_sum_fa19<-dfWood %>%
  filter(date>"2019-08-01" & date <"2019-12-31")%>%
  group_by(motusTagID) %>%
  summarize(recvdetected=n_distinct(recvDeployName),
            max_ts=max(ts),
            min_ts=min(ts)) %>%
  mutate(diff_ts=max_ts-min_ts) %>%
  filter(recvdetected>1 & diff_ts>360)

paste(dfWood_sum_fa19[,1])

dfWood_sp19<-dfWood %>%
  filter(date>"2019-02-01" & date <"2019-06-15")%>%
  filter(motusTagID %in% c("28434", "28451", "33842", "33843", "33844", "33850", "33852",
                           "33854", "33856", "33857", "33858", "34310", "34311", "34312")) %>%
  arrange(ts)       # order by time stamp 


dfWood_fa19<-dfWood %>%
  filter(date>"2019-08-01" & date <"2019-12-31")%>%
  filter(motusTagID %in% c("28434", 
                           "33853", "33857", "34302", "34310")) %>%
  arrange(ts)       # order by time stamp 
  
dfWood_44953<-dfWood %>%
  filter(tagDeployID %in% c("44953")) %>%
  arrange(ts)       # order by time stamp 

#### creating movement data
move_fa19<-df2move(df=dfWood_fa19,x='recvDeployLon', y='recvDeployLat',
               time='ts',
               proj="+proj=longlat +ellps=WGS84 +datum=WGS84",
               track_id='sp_tag',
               removeDuplicatedTimestamps=T)

# align move_data to a uniform time scale
m_fa19 <- align_move(move_fa19, res = 1, unit = "hours")  ######## define res as "minimum" "mean" or "maximum"

# create spatial frames with a osm terrain map or mapbox satellite
frames <- frames_spatial(m_fa19, 
                         map_service = "osm", map_type = "terrain", alpha = 0.75) %>% 
                         #map_service = "mapbox", map_type = "satellite", alpha = 0.7,
                         #map_token = "sk.eyJ1IjoiZGVncm9vdGVsIiwiYSI6ImNsaDQ0M2o5YTFtYW0za294ZW5haWlua2kifQ.sfLvTO57tAnwdd4C4RnpgQ") %>%
  add_labels(x = "Longitude", y = "Latitude") %>% # add some customizations, such as axis labels
  add_northarrow() %>% 
  add_scalebar() %>% 
  add_timestamps(type = "label") %>% 
  add_progress()

frames[[100]] # preview one of the frames, e.g. the 100th frame

# animate frames
# animate frames
animate_frames(frames, out_file = "moveVis_fa19.gif")



#select(c(speciesEN,motusTagID,mfgID,tagModel,tagBI,tagDepLat,tagDepLon,date,
#         ts,recvDeployName,recvDeployLat,recvDeployLon)) %>%