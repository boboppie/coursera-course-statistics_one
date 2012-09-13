# Statistics One, Lecture 3, example script
# Read data, plot histograms, get descriptives

# in case the package is not installed, run:
## install.packages("psych")
library(psych)

# Read the table into a dataframe called ratings
ratings <- read.table("supplemental-stats1_ex01.txt", header = T)
# or do:
## supplemental.stats1_ex01 <- read.delim("~/git/coursera-course-statistics_one/week1/lecture3/supplemental-stats1_ex01.txt")
## View(supplemental.stats1_ex01)

# Explore the contents of the dataframe
View(ratings)  # display the data
class(ratings) # the type of object, returns "data.frame"
names(ratings) # list the name of variables in ratings, returns the headers

# Plot histograms
# e.g. hist(ratings$RedTruck)

# Plot four histograms on one page
layout(matrix(c(1,2,3,4), 2, 2, byrow = TRUE)) # create 2x2 matrix for layout
hist(ratings$WoopWoop, xlab = "Rating")
hist(ratings$RedTruck, xlab = "Rating")
hist(ratings$HobNob,   xlab = "Rating")
hist(ratings$FourPlay, xlab = "Rating")

# Learn more about functions
## help(hist)
## help(read.table)

# Descriptive statistics for the variables in the dataframe called ratings
describe(ratings) # must load lib "psych"

