#######################################
####### Re-run for each species from here

tag<-tagIDs[83,1] #increase the  number to get next tagID e.g. [2]

############## Filtering down to single tag and species
single.tag<-colldata %>%
  arrange(motusTagID, ts) %>%       # order by time stamp for each tag
  mutate(date = as_date(ts)) %>%    # create date variable
  filter(motusTagID %in% c(tag),!is.na(recvDeployLat) | !(recvDeployLat == 0))

single.tag$port<-as.factor(single.tag$port)

species<-unique(single.tag$speciesEN)

# Format Time column
#single.tag$Time <- as.POSIXct(strptime(single.tag$ts,format="%Y-%m-%d %H:%M:%OS",tz = "UTC"))

# Make Time local timezone
#single.tag$Time.Local <- lubridate::with_tz(single.tag$Time, tzone = "America/New_York")

# look at single tag data

a<-single.tag %>%
  select(fullID, speciesEN,date,recvDeployName, recvDeployLat, recvDeployLon) %>%
  distinct() %>%
  group_by(recvDeployName)

view(a)
tag



### create plot object
p<-(ggplot(data = single.tag, aes(x = ts, y = sig, group  = port, colour=port)))

pg<- p + geom_point() + 
            ggforce::facet_wrap_paginate(
              as.factor(date)
              ~recvDeployName,  scales = "free_x", nrow = 4, ncol = 4, page = NULL)

# Determine how many pages are needed to plot information with 4 rows and 4 columns per page
required_n_pages <- n_pages(pg)

pdf(file = paste0(outpath, species, "_", tag, ".pdf"), width = 16, height = 12)

for(i in 1:required_n_pages){
  print(p +
          theme(axis.text.x = element_text(angle = 90)) +
          geom_point() + 
          ggforce::facet_wrap_paginate(
            as.factor(date)
            ~recvDeployName,  scales = "free", nrow = 4, ncol = 4, page = i))
  
}  

dev.off()




#### mapping
fun.getpath <- function(df) {
  df %>%
    group_by(motusTagID, recvDeployName, ambigID, 
             tagDepLon, tagDepLat, recvDeployLat, recvDeployLon) %>%
    summarize(max.runLen = max(runLen), ts.h = mean(ts)) %>%
    arrange(motusTagID, ts.h) %>%
    data.frame()
} # end of function call

df.alltags.path <- fun.getpath(single.tag)

df.alltags.sub.path <- single.tag %>%
  arrange(motusTagID, ts) %>%       # order by time stamp for each tag
  mutate(date = as_date(ts)) %>%    # create date variable
  group_by(motusTagID, date, recvDeployName, ambigID, 
           tagDepLon, tagDepLat, recvDeployLat, recvDeployLon)

df.alltags.path <- fun.getpath(df.alltags.sub.path)

df.tmp <- df.alltags.path %>%
  arrange(ts.h)  %>% # arange by hour
  as.data.frame()

library(maps)
na.lakes <- map_data(map = "lakes")
na.lakes <- mutate(na.lakes, long = long- 360)

# Include all of the Americas to begin
na.map <- map_data(map = "world2") %>%
  filter(region %in% c("Canada", "USA")) %>%
  mutate(long = long - 360)

# set limits to map based on locations of detections, ensuring they include the
# deployment locations
xmin <- min(df.tmp$recvDeployLon, na.rm = TRUE) - 3
xmax <- max(df.tmp$recvDeployLon, na.rm = TRUE) + 3
ymin <- min(df.tmp$recvDeployLat, na.rm = TRUE) - 3
ymax <- max(df.tmp$recvDeployLat, na.rm = TRUE) + 3

# map
ggplot(data = na.lakes, aes(x = long, y = lat))+ 
  theme_bw() + 
  geom_polygon(data = na.map, aes(x = long, y = lat, group = group), 
               colour = "grey", fill = "grey98") +
  geom_polygon(aes(group = group), colour = "grey", fill = "white") +
  coord_map(projection = "mercator", xlim = c(xmin, xmax), ylim = c(ymin, ymax)) +
  labs(x = "", y = "") +
  geom_path(data = df.tmp, 
            aes(x = recvDeployLon, y = recvDeployLat, 
                group = as.factor(motusTagID), colour = as.factor(motusTagID))) +
  geom_point(data = df.tmp, 
             aes(x = tagDepLon, y = tagDepLat), colour = "black", shape = 4) +
  scale_colour_discrete("motusTagID") 



