###################################################
# Week 6 Assignment
##################################################

library(psych)
library(car)
source(file="../../lib/eta_squared.R")

a5 <- read.table("DDA.05.txt", header = T)

time = factor(a5$time,levels=c("pre","post"))

# Q1 - Our theory predicts a significant interaction between time and condition. What is the F ratio for the interaction? 11.51
aov.a5 = aov(a5$SR ~ (a5$condition*a5$time) + Error(factor(a5$subject)/a5$time))
summary(aov.a5)
eta.2(aov.a5, ret.labels=TRUE)

# Q2 - One assumption of the analysis is homogeneity of variance. What is the F ratio for Levene’s test? 0.62
# Levene's test
leveneTest(a5$SR, a5$condition, center="mean")

condition <- a5$condition

# Simple effects analysis
# Q3 - What is the F ratio for the simple effect of time for the WM group? 19.29
aov.a5wm = aov(a5$SR[condition=="WM"] ~ a5$time[condition=="WM"] +Error(factor(a5$subject[condition=="WM"])/a5$time[condition=="WM"]))
summary(aov.a5wm) 
eta.2(aov.a5wm, ret.labels=TRUE)

# Q4 - What is the F ratio for the simple effect of time for the PE group? 0.04
aov.a5pe = aov(a5$SR[condition=="PE"] ~ a5$time[condition=="PE"] +Error(factor(a5$subject[condition=="PE"])/a5$time[condition=="PE"]))
summary(aov.a5pe) 
eta.2(aov.a5pe, ret.labels=TRUE)

# Q5 - What is the F ratio for the simple effect of time for the DS group? 32.45
aov.a5ds = aov(a5$SR[condition=="DS"] ~ a5$time[condition=="DS"] +Error(factor(a5$subject[condition=="DS"])/a5$time[condition=="DS"]))
summary(aov.a5ds) 
eta.2(aov.a5ds, ret.labels=TRUE)
