# Statistics One, Lecture 6, example script
# Read data, plot histogrames, get descriptives, examine scatterplot, run correlations
library(psych)

# Read the data into a dataframe called impact
impact <- read.table("./supplemental-stats1_ex02.txt", header=T)

# What type of object is impact?
class(impact)

# List the names of the variables in the dataframe called impact
names(impact)

# Change default settings for graphics
par(cex = 2, lwd = 2, col.axis = 200, col.lab = 200, col.main = 200, col.sub = 200, fg = 200)

# Plot histograms
hist(impact$memory.verbal, xlab = "Verbal memory", main = "Histogram", col = "red")
hist(impact$memory.visual, xlab = "Visual memory", main = "Histogram", col = "red")
hist(impact$speed.vismotor, xlab = "Visual-motor speed", main = "Histogram", col = "red")
hist(impact$speed.general, xlab = "General speed", main = "Histogram", col = "red")
hist(impact$impulse.control, xlab = "Impulse control", main = "Histogram", col = "red")

# Descriptive statistics for the variables in the dataframe called impact
describe(impact)

# Scatterplots (one pair at a time)
plot(impact$memory.verbal~impact$memory.visual, main = "Scatterplot", ylab = "Verbal memory", xlab = "Visual memory")
abline(lm(impact$memory.verbal~impact$memory.visual), col = "blue")

# Correlations (one pair at a time)
cor.test(impact$memory.verbal, impact$memory.visual)

# Correlations (all in a matrix)
cor(impact)

# Scatterplot matrix
library(gclus)
impact.r = abs(cor(impact))
impact.col = dmat.color(impact.r)
impact.o <- order.single(impact.r)
cpairs(impact, impact.o, panel.color = impact.col, gap = .5,
       main = "Variables Ordered and Colored by Correlation")
