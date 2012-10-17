
library(psych)
library(car)
source(file="eta_squared.R")

a5 <- read.table("DDA.05.txt", header = T)

time = factor(a5$time,levels=c("pre","post"))

aov.a5 = aov(a5$SR ~ (a5$condition*a5$time) + Error(factor(a5$subject)/a5$time))
summary(aov.a5)
eta.2(aov.a5, ret.labels=TRUE)

# Levene's test
leveneTest(a5$SR, a5$condition, center="mean")

condition <- a5$condition

# Simple effects analysis for simple span (i.e., word span)
aov.a5wm = aov(a5$SR[condition=="WM"] ~ a5$time[condition=="WM"] +Error(factor(a5$subject[condition=="WM"])/a5$time[condition=="WM"]))
summary(aov.a5wm) 
eta.2(aov.a5wm, ret.labels=TRUE)

aov.a5pe = aov(a5$SR[condition=="PE"] ~ a5$time[condition=="PE"] +Error(factor(a5$subject[condition=="PE"])/a5$time[condition=="PE"]))
summary(aov.a5pe) 
eta.2(aov.a5pe, ret.labels=TRUE)

aov.a5ds = aov(a5$SR[condition=="DS"] ~ a5$time[condition=="DS"] +Error(factor(a5$subject[condition=="DS"])/a5$time[condition=="DS"]))
summary(aov.a5ds) 
eta.2(aov.a5ds, ret.labels=TRUE)