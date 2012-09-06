# Statistics One, Week 1 Assignment
# A different way to visualize the data
# Code by Peter Taylor 
# A visual analysis of the last question... different method for setting 
# layout ( use par instead of layout ... the lazy man's way :p ). Different 
# method for filtering data set based on independent variable ( see 
# http://stackoverflow.com/questions/1686569/filtering-a-data-frame-in-r ). 
# Also, used a density line instead of histogram for the sake of having 
# readable plots, and of course Scott's great suggestion to apply xlim 
# parameter to plots!

d <- read.table(file='./DAA.01.txt',header=TRUE)

par(mfcol=c(2,2))

plot(density(d[ d$cond == 'aer','pre.wm.s' ]),main='Pre vs post wm.s (aer)',col='blue',xlim=c(0,55))
points(density(d[ d$cond == 'aer','post.wm.s' ]),type='l',col='orange')
abline(v = mean(d[ d$cond == 'aer','pre.wm.s' ]),col='blue',lty=3)
abline(v = mean(d[ d$cond == 'aer','post.wm.s' ]),col='orange',lty=3)
text(x=mean(d[ d$cond == 'aer','pre.wm.s' ]),y=0.08,labels=paste('pre-training mean =',mean(d[ d$cond == 'aer','pre.wm.s' ])))
text(x=mean(d[ d$cond == 'aer','post.wm.s' ]),y=0.06,labels=paste('post-training mean =',mean(d[ d$cond == 'aer','post.wm.s' ])))
mean(d[ d$cond == 'aer','post.wm.s' ]) - mean(d[ d$cond == 'aer','pre.wm.s' ])

plot(density(d[ d$cond == 'aer','pre.wm.v' ]),main='Pre vs post wm.v (aer)',col='green',xlim=c(0,55))
points(density(d[ d$cond == 'aer','post.wm.v' ]),type='l',col='black')
abline(v = mean(d[ d$cond == 'aer','pre.wm.v' ]),col='green',lty=3)
abline(v = mean(d[ d$cond == 'aer','post.wm.v' ]),col='black',lty=3)
text(x=mean(d[ d$cond == 'aer','pre.wm.v' ]),y=0.03,labels=paste('pre-training mean =',mean(d[ d$cond == 'aer','pre.wm.v' ])))
text(x=mean(d[ d$cond == 'aer','post.wm.v' ]),y=0.01,labels=paste('post-training mean =',mean(d[ d$cond == 'aer','post.wm.v' ])))
mean(d[ d$cond == 'aer','post.wm.v' ]) - mean(d[ d$cond == 'aer','pre.wm.v' ])

plot(density(d[ d$cond == 'des','pre.wm.s' ]),main='Pre vs post wm.s (des)',col='blue',xlim=c(0,55))
points(density(d[ d$cond == 'des','post.wm.s' ]),type='l',col='orange')
abline(v = mean(d[ d$cond == 'des','pre.wm.s' ]),col='blue',lty=3)
abline(v = mean(d[ d$cond == 'des','post.wm.s' ]),col='orange',lty=3)
text(x=mean(d[ d$cond == 'des','pre.wm.s' ]),y=0.1,labels=paste('pre-training mean =',mean(d[ d$cond == 'des','pre.wm.s' ])))
text(x=mean(d[ d$cond == 'des','post.wm.s' ]),y=0.08,labels=paste('post-training mean =',mean(d[ d$cond == 'des','post.wm.s' ])))
mean(d[ d$cond == 'des','post.wm.s' ]) - mean(d[ d$cond == 'des','pre.wm.s' ])

plot(density(d[ d$cond == 'des','pre.wm.v' ]),main='Pre vs post wm.v (des)',col='green',xlim=c(0,55))
points(density(d[ d$cond == 'des','post.wm.v' ]),type='l',col='black')
abline(v = mean(d[ d$cond == 'des','pre.wm.v' ]),col='green',lty=3)
abline(v = mean(d[ d$cond == 'des','post.wm.v' ]),col='black',lty=3)
text(x=mean(d[ d$cond == 'des','pre.wm.v' ]),y=0.03,labels=paste('pre-training mean =',mean(d[ d$cond == 'des','pre.wm.v' ])))
text(x=mean(d[ d$cond == 'des','post.wm.v' ]),y=0.01,labels=paste('post-training mean =',mean(d[ d$cond == 'des','post.wm.v' ])))
mean(d[ d$cond == 'des','post.wm.v' ]) - mean(d[ d$cond == 'des','pre.wm.v' ])