
library(tidyverse)

Growfor <- read_csv("https://raw.githubusercontent.com/ForestryAnalytics/GrowforDataSets/main/Growfor-Data1.csv")

Growfor <- Growfor %>% select(Regime:VolumePerHa) %>%
  mutate(Regime =factor(Regime))

ggplot(Growfor, aes(x=Age,y=AverageVolume,colour=Regime) )+ geom_line(lwd=2) + theme_bw()
