
library(psych)

# Read data into R
wm <- read.delim("./supplemental-stats1_ex07.txt")

# Descriptive statistics
describeBy(wm, wm$cond)

wm.c <- subset(wm, wm$train == "0")
wm.t <- subset(wm, wm$train == "1")

wm.c.out <- describe(wm.c)
wm.t.out <- describe(wm.t)

