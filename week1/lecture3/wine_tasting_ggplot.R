# Use ggplot2 library to plot the histograms

## install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)
source("../../lib/multiplot.R")

ratings <- read.table("supplemental-stats1_ex01.txt", header=T)

# Reference - http://wiki.stdout.org/rcookbook/Graphs/Plotting%20distributions%20(ggplot2)/
p1 <-
ggplot(ratings, aes(x=RedTruck)) + 
  geom_histogram(aes(y=..density..),      # Histogram with density instead of count on y-axis
                 binwidth=.5,
                 colour="black", fill="white") +  
  geom_density(alpha=.5, fill="#FF6666") + 
  geom_vline(aes(xintercept=mean(RedTruck, na.rm=T)),   # Ignore NA values for mean
             color="red", linetype="dashed", size=1)
p2 <-
  ggplot(ratings, aes(x=WoopWoop)) + 
  geom_histogram(aes(y=..density..), 
                 binwidth=.5,
                 colour="black", fill="white") +
  geom_density(alpha=.5, fill="#FF6666") + 
  geom_vline(aes(xintercept=mean(WoopWoop, na.rm=T)),
             color="red", linetype="dashed", size=1)

p3 <-
  ggplot(ratings, aes(x=HobNob)) + 
  geom_histogram(aes(y=..density..),
                 binwidth=.5,
                 colour="black", fill="white") +  
  geom_density(alpha=.5, fill="#FF6666") + 
  geom_vline(aes(xintercept=mean(HobNob, na.rm=T)),
             color="red", linetype="dashed", size=1)

p4 <-
  ggplot(ratings, aes(x=FourPlay)) + 
  geom_histogram(aes(y=..density..),
                 binwidth=.5,
                 colour="black", fill="white") +  
  geom_density(alpha=.5, fill="#FF6666") + 
  geom_vline(aes(xintercept=mean(FourPlay, na.rm=T)),
             color="red", linetype="dashed", size=1)

multiplot(p1, p2, p3, p4, cols=2)