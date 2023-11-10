
remove(list=ls())		### remove all objects
detach()	

library(remotes)

remotes::update_packages

library(utils)

### remove old motus packages
remove.packages(c("motus", "motusClient"))


### install needed packages
install.packages(c("motus", "motusData"), 
                 repos = c(birdscanada = 'https://birdscanada.r-universe.dev',
                           CRAN = 'https://cloud.r-project.org'))

install.packages(c("tidyverse", "ggmap", "rnaturalearth"))

install.packages(c("rnaturalearthhires", "rnaturalearthdata"),
                 repos = c(ropensci = 'https://ropensci.r-universe.dev',  
                           CRAN = 'https://cloud.r-project.org'))
install.packages("RSQLite")

### load packages
library(motus)
library(rnaturalearth)
library(tidyverse)
library(ggmap)

