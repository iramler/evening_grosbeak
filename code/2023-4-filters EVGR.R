########## Not sure if false detection, released May 17th, detected July 11 and 14 across the lake at West Prt Bruce
df.block.1 <- colldata %>%
  filter(motusTagID == 28443, 
         recvDeployName %in% c("Jay Drasher","Finca Las Palmeras","Dewees Island")) %>% 
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()


df.block.2 <- colldata %>%
  filter(motusTagID == 32452, 
         recvDeployName %in% "Moosonee") %>% 
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### Right area and time but few detentions at known noisy sites
df.block.3 <- colldata %>%
  filter(motusTagID == 32454) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

################################################################ Start here

########### unlikely detections winter in Nova Scotia
df.block.4 <- colldata %>%
  filter(motusTagID == 24397) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detection from CLE June to PARC Oct and Summit in Dec/Feb
df.block.5 <- colldata %>%
  filter(motusTagID == 28420,
         recvDeployName %in% c("PARC Banding", "PARC Armour", "Summit Fire Tower")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections in canada
df.block.6 <- colldata %>%
  filter(motusTagID == 28428,
         recvDeployName %in% c("Port Mouton", "Clifton's Residence")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections 
df.block.7 <- colldata %>%
  filter(motusTagID == 28445,
         recvDeployName %in% c("West Port Bruce", "Finca Las Palmeras")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections 
df.block.8 <- colldata %>%
  filter(motusTagID == 28449,
         recvDeployName %in% c("Koffler", "D'Estimauville", "Grève de Tadoussac", "Jay Drasher", "Finca Las Palmeras", "West Port Bruce", "Horton High School", "Lookoff", "Dewees Island")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections 
df.block.9 <- colldata %>%
  filter(motusTagID == 28451,
         recvDeployName %in% c("Finca Las Palmeras")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections 
df.block.10 <- colldata %>%
  filter(motusTagID == 28763,
         recvDeployName %in% c("High Park")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections 
df.block.11 <- colldata %>%
  filter(motusTagID == 33840,
         recvDeployName %in% c("Chaufferie", "Lookoff")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections 
df.block.12 <- colldata %>%
  filter(motusTagID == 33842,
         recvDeployName %in% c("PARC Mt. Laurel", "Dewees Island")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections 
df.block.13 <- colldata %>%
  filter(motusTagID == 33843,
         recvDeployName %in% c("Wells2", "Rushton Farm")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()


########### unlikely detections 
df.block.14 <- colldata %>%
  filter(motusTagID == 33844,
         recvDeployName %in% c("Rushton Farm", "Summit Fire Tower")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections 
df.block.15 <- colldata %>%
  filter(motusTagID == 33850,
         recvDeployName %in% c("Earl_Rowe_PP", "Altona", "Jay Drasher", "Clifton", "Magnetawan First Nation",
                               "Winous Point", "Patuxent River Park", "Grève de Tadoussac", "Agrosavia_Investigadores", 
                               "Parque Jaime Duque, Bogota", "Golfo de Santa Clara - RV Park",
                               "FDSHQ", "Kamloops", "GFAFB - Lagoons", "Bluestem Farm")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections 
df.block.16 <- colldata %>%
  filter(motusTagID == 33851,
         recvDeployName %in% c("Altona", "Clifton", "Dewees Island",
                               "Lambs Gap Tower", "Newtowne Neck State Park, Compton, MD", "Triton2", 
                               "Reserva de la Biosfera Ria Celestun, CONANP field ",
                               "FDSHQ", "Batmobile-MPG North Floodplains-IWC-MT")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections, positive vlaues for "North Tawas", "Clear Lake", "No Pabo", "Cedar Point" "OttawaWeir", "Erie Marsh 2016"
df.block.18 <- colldata %>%
  filter(motusTagID == 33852,
         recvDeployName %in% c("Altona", "Clifton", "Fortwhyte Alive", "Fort River", "Grève de Tadoussac",
                              "Jay Drasher", "Agrosavia_Investigadores", "Parque Jaime Duque, Bogota",
                              "IndianRidge2-MPG-MT", "FDSHQ", "McGill_Bird_Observatory", "Interstate Island",
                              "UMBELmobile-MPG-MT")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections, positive vlaues for "Fletcher"
df.block.19 <- colldata %>%
  filter(motusTagID == 33853,
         recvDeployName %in% c("Altona", "Clifton", "Jay Drasher",
                               "Interstate Island","Fortwhyte Alive", "UMBELmobile−MPG−MT",
                               "IndianRidge2-MPG-MT", "Lambs Gap Tower", "FDSHQ",
                               "McGill_Bird_Observatory", "Fort River", "Grève de Tadoussac",
                               "Agrosavia_Investigadores", "Parque Jaime Duque, Bogota", "FDSHQ",
                               "McGill_Bird_Observatory")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.20 <- colldata %>%
  filter(motusTagID == 33854,
         recvDeployName %in% c("Altona", "Clifton", "IndianRidge2-MPG-MT",
                               "Bonnechere Caves2","Bois de la Roche 1")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.21 <- colldata %>%
  filter(motusTagID == 33855,
         recvDeployName %in% c("Altona", "Clifton", "Torrance B",
                               "Ladd","Fortwhyte Alive")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.22 <- colldata %>%
  filter(motusTagID == 33856, ts>="2019-11-07 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

df.block.23 <- colldata %>%
  filter(motusTagID == 33856,
         recvDeployName %in% c("Horton High School", "Jay Drasher", "Waggoners Gap", "Ladd",
                               "SGL 154", "Lookoff", "Mary Gray Bird Sanctuary Indiana", "Altona",
                               "Clifton", "Kamloops", "Stutchbury", "Stump Lake", "CNSC2", "Fortwhyte Alive")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.24 <- colldata %>%
  filter(motusTagID == 33857,
         recvDeployName %in% c("Altona", "Clifton", "Lambs Gap Tower",
                               "Box Canyon","Wolfe")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.25 <- colldata %>%
  filter(motusTagID == 33858,
         recvDeployName %in% c("Altona", "Clifton", "Fortwhyte Alive",
                               "Ladd")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.26 <- colldata %>%
  filter(motusTagID == 33859, ts>="2019-06-22 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.27 <- colldata %>%
  filter(motusTagID == 33860, ts>="2020-12-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.28 <- colldata %>%
  filter(motusTagID == 33862,
         recvDeployName %in% c("Altona", "Clifton", "Interstate Island",
                               "Lambs Gap Tower")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.30 <- colldata %>%
  filter(motusTagID == 33863,
         recvDeployName %in% c("Kalamazoo Nature Center", "The Tip_2", "North Tawas")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.31 <- colldata %>%
  filter(motusTagID == 33864, ts>="2019-12-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.32 <- colldata %>%
  filter(motusTagID == 34302,
         recvDeployName %in% c("Lookoff", "FDSHQ", "Interstate Island")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.33 <- colldata %>%
  filter(motusTagID == 34303,
         recvDeployName %in% c("LacEdouard-Champs", "FDSHQ", "Interstate Island")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.34 <- colldata %>%
  filter(motusTagID == 34304, ts>="2020-06-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.35 <- colldata %>%
  filter(motusTagID == 34305,
         recvDeployName %in% c("Patuxent River Park")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()


########### unlikely detections
df.block.36 <- colldata %>%
  filter(motusTagID == 34307,
         recvDeployName %in% c("Port Mouton", "Triton2", "Torrance B", "FDSHQ",
                               "Reserva de la Biosfera Ria Celestun, CONANP field ", "Newtowne Neck State Park, Compton, MD")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.37 <- colldata %>%
  filter(motusTagID == 34310,
         recvDeployName %in% c("Geneva", "Wells2", "Mackay Island NWR, NC")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.38 <- colldata %>%
  filter(motusTagID == 34312,
         recvDeployName %in% c("Aube")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.39 <- colldata %>%
  filter(motusTagID == 34314,
         recvDeployName %in% c("Smithsonian Conservation Biology Institute", "Port Mouton",
                               "Grève de Tadoussac", "Triton2", "Bluestem Farm", "Lookoff")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.40 <- colldata %>%
  filter(motusTagID == 34317,
         recvDeployName %in% c("Port Mouton")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()


########### unlikely detections
df.block.41 <- colldata %>%
  filter(motusTagID == 34319,
         recvDeployName %in% c("Smithsonian Conservation Biology Institute", "Triton2")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.42 <- colldata %>%
  filter(motusTagID == 52194, ts>="2021-11-18 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### Rushton tag
df.block.43 <- colldata %>%
  filter(motusTagID == 38756)  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### no tagging data, deployed in cleveland, all noise
df.block.44 <- colldata %>%
  filter(motusTagID == 52196)  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.45 <- colldata %>%
  filter(motusTagID == 52199,
         recvDeployName %in% c("the Wilds")) %>%
  select(motusTagID, runID) %>%
  distinct() %>%
  collect()

########### unlikely detections
df.block.46 <- colldata %>%
  filter(motusTagID == 52200, ts>="2021-05-09 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.47 <- colldata %>%
  filter(motusTagID == 52201, 
         recvDeployName %in% c("Beloeil")) %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.48 <- colldata %>%
  filter(motusTagID == 52202, ts>="2021-06-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.49 <- colldata %>%
  filter(motusTagID == 52203, ts>="2021-06-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.50 <- colldata %>%
  filter(motusTagID == 52204, ts>="2021-05-17 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

df.block.51 <- colldata %>%
  filter(motusTagID == 52204, 
         recvDeployName %in% c("Columbus Zoo", "Breakwater")) %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.52 <- colldata %>%
  filter(motusTagID == 52205, ts>="2021-05-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.53 <- colldata %>%
  filter(motusTagID == 52206, ts>="2021-05-31 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.54 <- colldata %>%
  filter(motusTagID == 52207, 
         recvDeployName %in% c("Bluestem Farm")) %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.55 <- colldata %>%
  filter(motusTagID == 52208, ts>="2021-04-15 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.56 <- colldata %>%
  filter(motusTagID == 52209, ts>="2021-06-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.57 <- colldata %>%
  filter(motusTagID == 52210, ts>="2021-06-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.58 <- colldata %>%
  filter(motusTagID == 52211, ts>="2021-06-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.59 <- colldata %>%
  filter(motusTagID == 53500, ts>="2022-05-16 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.60 <- colldata %>%
  filter(motusTagID == 53502, ts>="2022-07-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.61 <- colldata %>%
  filter(motusTagID == 53504, ts>="2022-06-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.62 <- colldata %>%
  filter(motusTagID == 59119, 
         recvDeployName %in% c("FDSHQ")) %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.63 <- colldata %>%
  filter(motusTagID == 59121) %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.64 <- colldata %>%
  filter(motusTagID == 59123, ts>="2022-06-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.65 <- colldata %>%
  filter(motusTagID == 59124, ts>="2022-01-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.66 <- colldata %>%
  filter(motusTagID == 59127, 
         recvDeployName %in% c("Newtowne Neck State Park, Compton, MD", "Kent Farm Research Station")) %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.67 <- colldata %>%
  filter(motusTagID == 59129, 
         recvDeployName %in% c("Reserva de la Biosfera Ria Celestun, CONANP field ", "FortWhyte Alive",
                               "FDSHQ", "Grève de Tadoussac")) %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.68 <- colldata %>%
  filter(motusTagID == 59131, ts>="2021-12-01 00:00:00")  %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.69 <- colldata %>%
  filter(motusTagID == 69416, 
         recvDeployName %in% c("Lookoff", "Kent Farm Research Station")) %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()

########### unlikely detections
df.block.70 <- colldata %>%
  filter(motusTagID == 69417, 
         recvDeployName %in% c("Kent Farm Research Station")) %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()


########### unlikely detections
df.block.71 <- colldata %>%
  filter(motusTagID == 69418, 
         recvDeployName %in% c("Kent Farm Research Station")) %>%
  select(motusTagID, runID) %>%  
  distinct() %>%
  collect()


####################

#single.tag <- single.tag %>% 
 # anti_join(df.block.69, by = c("runID", "motusTagID"))

#single.tag.sub<-subset(single.tag,recvDeployName != "PARC Honey Hut",select = c(speciesEN, fullID, runLen, Time.Local, tagBI, recvDeployName, recvDeployLat, recvDeployLon))
#view(single.tag.sub)
#temp<-paste0(rep("df.block.",71),(1:71))

df.block.all <- bind_rows(df.block.1, df.block.2, df.block.3, df.block.4, df.block.5, df.block.6, df.block.7, df.block.8, df.block.9, 
                          df.block.11, df.block.12, df.block.13, df.block.14, df.block.15, df.block.16,  df.block.18, df.block.19, df.block.20,
                          df.block.21, df.block.22, df.block.23, df.block.24, df.block.25, df.block.26, df.block.27, df.block.28, df.block.30,
                          df.block.31, df.block.32, df.block.33, df.block.34, df.block.35, df.block.36, df.block.37, df.block.38, df.block.39, df.block.40,
                          df.block.41, df.block.42, df.block.43, df.block.44, df.block.45, df.block.46, df.block.47, df.block.48, df.block.49, df.block.50,
                          df.block.51, df.block.52, df.block.53, df.block.54, df.block.55, df.block.56, df.block.57, df.block.58, df.block.59, df.block.60,
                          df.block.61, df.block.62, df.block.63, df.block.64, df.block.65, df.block.66, df.block.67, df.block.68, df.block.69, df.block.70,
                          df.block.71)

wood.clean <- colldata %>% 
 anti_join(df.block.all, by = c("runID", "motusTagID"))

saveRDS(wood.clean, file = "./data/dfWoodClean.rds")




