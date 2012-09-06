# Statistics One, Week 1 Assignment

library(ggplot2)
library(psych)
source("../../lib/multiplot.R")

wm <- read.table(file='./DAA.01.txt',header=TRUE)

h1 <- ggplot(wm, aes(x=pre.wm.s)) + geom_histogram(binwidth=2,colour="white") + facet_grid(cond ~ .)
h2 <- ggplot(wm, aes(x=post.wm.s)) + geom_histogram(binwidth=2,colour="white") + facet_grid(cond ~ .)
h3 <- ggplot(wm, aes(x=pre.wm.v)) + geom_histogram(binwidth=2,colour="white") + facet_grid(cond ~ .)
h4 <- ggplot(wm, aes(x=post.wm.v)) + geom_histogram(binwidth=2,colour="white") + facet_grid(cond ~ .)

multiplot(h1, h2, h3, h4, cols=2)

# Description
# split the data by condition
wm_splited <- split(wm, wm$cond) # created a list
wm_splited_des <- wm_splited$des # design
wm_splited_aer <- wm_splited$aer # aerobic

describe(wm)
describe(wm_splited_des)
describe(wm_splited_aer)