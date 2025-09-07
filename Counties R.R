library(tidyverse)
library(ggplot2)


df <- data.frame(País = c("Canada", "Chile", "Mexico", "Uruguay"),
                 Volumen = c(143442, 175933, 220940, 190098),
                 Zona = c("N", "S", "C", "S"))

df %>% ggplot(x = País, y = Volumen)+
  geom_point(aes(País, Volumen, color = Zona), size = 5)+
  scale_y_continuous(limits = c(100000,300000))+
  theme(panel.background = element_rect(fill = "#d5e4eb"))+
  theme(plot.background = element_rect(fill = "#bfbe9c"))+
  theme(panel.background = element_rect(fill = "#bfbe9c"))+
  theme(legend.key = element_rect(fill = "#bfbe9c"))+
  theme(legend.background = element_rect(fill = "#bfbe9c"))+
  theme(legend.key = element_rect(fill = "transparent"))+
  theme(legend.key.size = unit(1, "cm"))+
  theme(axis.title.x = element_text(color = "Black", size = 12))+
  theme(axis.title.y = element_text(color = "Black", size = 12))+
  theme(legend.position = "left")+
  scale_colour_brewer(name = "North, Central & South")+
  ggtitle("Distributions", subtitle = "info@regressiondata.com")

df <- data.frame(País = c("Canada", "Chile", "Mexico", "Uruguay"),
                 Volumen = c(143442, 175933, 220940, 190098),
                 Zona = c("N", "S", "C", "S"))
df