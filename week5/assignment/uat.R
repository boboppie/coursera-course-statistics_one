##########################################
# Week 5 Assignment
#
# Suppose an experiment was conducted to test whether Working Memory (WM) training works 
# as well as Study Program (SP) training to boost performance on a university admission 
# test (UAT). Assume that high school students were recruited and randomly assigned to 
# one of two conditions: WM training or SP training. Further assume that each student 
# was tested on the UAT before and after training (so we have pre- and post-training 
# scores on the UAT).
##########################################

library(psych)

# Read data into R
uat <- read.delim("./DAA.04.txt")

# Descriptive statistics
describeBy(uat, uat$training)

# Create subsets of WM and SP
uat.sp <- subset(uat, uat$training == "SP")
uat.sp.out <- describe(uat.sp)

uat.wm <- subset(uat, uat$training == "WM")
uat.wm.out <- describe(uat.wm)

# Dependent t-tests
# A test measuring the training effect for the SP group
# Paired t-test
# alternative hypothesis: true difference in means is not equal to 0 
t.test(uat.sp$pre.uat, uat.sp$post.uat, paired = T) # t = -5.6849, p-value = 1.763e-05

# Cohen's d
d.sp <- (uat.sp.out[4,3])/(uat.sp.out[4,4]) # 1.271187

# A test measuring the training effect for the WM group
# Paired t-test
# alternative hypothesis: true difference in means is not equal to 0
t.test(uat.wm$pre.uat, uat.wm$post.uat, paired = T) # t = -4.1991, p-value = 0.0004863
d.wm <- (uat.wm.out[4,3])/(uat.wm.out[4,4]) # 0.938946

# Independent t-tests
# Compare SP and WM training, using group as the IV and gain score as the DV
# Two Sample t-test
# alternative hypothesis: true difference in means is not equal to 0
t.test(uat$gain ~ uat$training, var.equal = T) # t = 0.659, p-value = 0.5139, Retain H0

# Cohen's d
pooled.sd <- sqrt((19/38 * uat.sp.out[4,4]^2) + (19/38 * uat.wm.out[4,4]^2))
d.sp_wm <- (uat.sp.out[4,3] - uat.wm.out[4,3]) / pooled.sd # 0.2087204
