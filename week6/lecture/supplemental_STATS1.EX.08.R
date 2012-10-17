#########
# Macnamara, Moore, & Conway (2011), Experiment 1, Serial recall
#########

library(psych)
library(car)
source(file="eta_squared.R")

e1sr <- read.table("STATS1.EX.08.txt", header = T)

# Omnibus analysis is a 3x2 mixed factorial with task and stimuli as the independent variables and serial recall as the dependent variable.  The three levels of task are word span, reading span, and story span.  The two levels of stimuli are phonologically similar and phonologically dissimilar.

stim = factor(e1sr$stim,levels=c("S","D"))  #reverse levels (for graphs like the article)

aov.e1sr = aov(e1sr$recall ~ (e1sr$task*e1sr$stim) + Error(factor(e1sr$subject)/e1sr$stim))
summary(aov.e1sr)
eta.2(aov.e1sr, ret.labels=TRUE)


# Levene's test
leveneTest(e1sr$recall, e1sr$task, center="mean")

task <- e1sr$task

# Simple effects analysis for simple span (i.e., word span)
aov.e1srw = aov(e1sr$recall[task=="W"] ~ e1sr$stim[task=="W"] +Error(factor(e1sr$subject[task=="W"])/e1sr$stim[task=="W"]))
summary(aov.e1srw) 
eta.2(aov.e1srw, ret.labels=TRUE)

# Simple effects analysis for complex span (this is a 2x2 mixed factorial)
aov.e1srnw = aov(e1sr$recall[task!="W"] ~ e1sr$task[task!="W"]*e1sr$stim[task!="W"] + 
  Error(factor(e1sr$subject[task!="W"]) / e1sr$stim[task!="W"]))
summary(aov.e1srnw) 
eta.2(aov.e1srnw, ret.labels=TRUE)


#######

#Graph

# Bar plot

wspan = describe.by(recall[task=="W"], group = stim[task =="W"], mat = T)
rspan = describe.by(recall[task=="R"], group = stim[task =="R"], mat = T)
sspan = describe.by(recall[task=="S"], group = stim[task =="S"], mat = T)
graphme = cbind(Words = wspan$mean, Sentences = rspan$mean, Stories = sspan$mean)
rownames(graphme) = c("Phonologically Similar", "Phonologically Dissimilar")
se = cbind(wspan$se, rspan$se, sspan$se)

bp = barplot(graphme, beside = TRUE,
        ylim = c(0,1), space = c(0, .5), legend.text = TRUE, 
        args.legend = c(x = "topright"))
abline(h=0)
for (ii in 1:3) {
  arrows(bp[1, ii], graphme[1,ii] - se[1, ii],
		 y1 = graphme[1,ii] + se[1, ii], angle = 90, code = 3)
  arrows(bp[2, ii], graphme[2,ii] - se[2, ii],
  	 y1 = graphme[2,ii] + se[2, ii], angle = 90, code = 3)
	}
	
#######
