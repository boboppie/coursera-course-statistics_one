# Use ggplot2 library to plot the histograms

## install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

multiplot <- function(..., plotlist=NULL, cols) {
  require(grid)
  
  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  # Make the panel
  plotCols = cols                       # Number of columns of plots
  plotRows = ceiling(numPlots/plotCols) # Number of rows needed, calculated from # of cols
  
  # Set up the page
  grid.newpage()
  pushViewport(viewport(layout = grid.layout(plotRows, plotCols)))
  vplayout <- function(x, y)
    viewport(layout.pos.row = x, layout.pos.col = y)
  
  # Make each plot, in the correct location
  for (i in 1:numPlots) {
    curRow = ceiling(i/plotCols)
    curCol = (i-1) %% plotCols + 1
    print(plots[[i]], vp = vplayout(curRow, curCol ))
  }
  
}

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