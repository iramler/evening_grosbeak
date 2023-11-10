rm(list=ls())

library(motus)
library(lubridate)
library(dplyr)
library(RSQLite)


# Set the system environment time zone to GMT (to
# ensure that you are always working in GMT)
Sys.setenv(TZ = "UTC")

setwd("C:/Users/degrootel/Documents/Motus/R files/Collision Motus/")

sql.motus <- tagme(35, new = FALSE, update = TRUE, dir = "./data/") ## update data
degrootel
Griseus1

#metadata(sql.motus, projectIDs = 35)  ## tag FALSE tag metadata

## virtual tables
tbl.alltags <- tbl(sql.motus, "alltags") # virtual table




# Filter the data
tbl.cswg <- tbl(sql.motus, "alltags") %>%
  filter(speciesID %in% c(4980,15600)) %>%          ### change to appropriate species here
  collect()%>%
  as.data.frame()%>%    
  mutate(ts = as_datetime(ts, tz = "UTC", origin = "1970-01-01")) 


#### filter runlength < 3
df.cswg <- filter(tbl.cswg, runLen > 2)


saveRDS(df.cswg, "./data/df_cswg.RDS")
