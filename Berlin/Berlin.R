library(dplyr)
library (ggplot2)

# Read results for Berlin Marathon. ~ 28500 man 
resultsM <- readRDS("results_Berlin_M.rds")


ggplot(data=resultsM, aes(x=time)) +
  geom_histogram(breaks=seq(120,455, by=1),
                 alpha = 0.7, fill= "#336699") +
  labs(title="Marathon - Berlin 2018. Number of runners - depending on finish time", x="time [minutes]", y="number of runners") +
  theme_bw()  + 
  scale_x_continuous(breaks=seq(120,450,10)) + 
  annotate("text", x = 180, 
           y = 162, label = "~3h'", angle=0, size=4, 
           colour='black', face="bold") +
   annotate("text", x = 210, 
             y = 276, label = "~3h30'", angle=0, size=4, 
             colour='black', face="bold") + 
  annotate("text", x = 240, 
           y = 382, label = "~4h", angle=0, size=4, 
           colour='black', face="bold")


