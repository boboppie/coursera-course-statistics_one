# Statistics One, Week 1 Assignment

library(ggplot2)
library(psych)
source("../../lib/multiplot.R")

h1 <- ggplot(wm, aes(x=pre.wm.s)) + geom_histogram(binwidth=2,colour="white") + facet_grid(cond ~ .)
h2 <- ggplot(wm, aes(x=post.wm.s)) + geom_histogram(binwidth=2,colour="white") + facet_grid(cond ~ .)
h3 <- ggplot(wm, aes(x=pre.wm.v)) + geom_histogram(binwidth=2,colour="white") + facet_grid(cond ~ .)
h4 <- ggplot(wm, aes(x=post.wm.v)) + geom_histogram(binwidth=2,colour="white") + facet_grid(cond ~ .)

multiplot(h1, h2, h3, h4, cols=2)