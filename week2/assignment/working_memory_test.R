# Statistics One, Week 2, Assignment
# Read data, get descriptives, examine scatterplot, run correlations
library(ggplot2)
library(psych)

# Read the data into a dataframe called impact
wm <- read.table("./DAA.02.txt", header=T)

describeBy(wm, wm$cond)

# Split dataframe by factor cond, wm_split$aer, wm_split$des
wm_split <- split(wm, wm$cond)

# Pairwise Pearson's product-moment correlation
cor.test(wm_split$aer$pre.wm.s1,wm_split$aer$pre.wm.s2)

# panel.smooth function is built in.
# panel.cor puts correlation in upper panels, size proportional to correlation
panel.cor <- function(x, y, digits=2, prefix="", cex.cor, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- abs(cor(x, y))
  txt <- format(c(r, 0.123456789), digits=digits)[1]
  txt <- paste(prefix, txt, sep="")
  if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
  text(0.5, 0.5, txt, cex = cex.cor * r)
}

# Plot #2: same as above, but add loess smoother in lower and correlation in upper
pairs(~pre.wm.s1+pre.wm.s2+post.wm.s1+post.wm.s2+pre.wm.v1+pre.wm.v2+post.wm.v1+post.wm.v2, data=wm_split$aer,
      lower.panel=panel.smooth, upper.panel=panel.cor, 
      pch=20, main="Working Memory Scatterplot Matrix ~ cond:aer")

pairs(~pre.wm.s1+pre.wm.s2+post.wm.s1+post.wm.s2+pre.wm.v1+pre.wm.v2+post.wm.v1+post.wm.v2, data=wm_split$des,
      lower.panel=panel.smooth, upper.panel=panel.cor, 
      pch=20, main="Working Memory Scatterplot Matrix ~ cond:des")

# scatterplot matrix
# aer
plotmatrix(with(wm_split$aer, data.frame(pre.wm.s1, pre.wm.s2, post.wm.s1, post.wm.s2, pre.wm.v1, pre.wm.v2, post.wm.v1, post.wm.v2)))  + geom_smooth(method="lm")

# des
plotmatrix(with(wm_split$des, data.frame(pre.wm.s1, pre.wm.s2, post.wm.s1, post.wm.s2, pre.wm.v1, pre.wm.v2, post.wm.v1, post.wm.v2)))  + geom_smooth(method="lm")

# Plot reference
# [1] http://gettinggeneticsdone.blogspot.co.uk/2011/07/scatterplot-matrices-in-r.html
# [2] http://learnr.wordpress.com/2009/07/15/ggplot2-version-of-figures-in-lattice-multivariate-data-visualization-with-r-part-5/
# [3] http://had.co.nz/ggplot2/docs/plotmatrix.html