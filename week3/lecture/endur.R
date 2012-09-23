#  Statistics One, Lecture 9, example script
# Multiple regression analysis

library(psych)

endur <- read.delim("./supplemental-stats1_ex04.txt")

# Scatterplots
plot(endur$endurance ~ endur$age, main = "Endurance ~ Age", ylab = "Endurance", xlab = "Age")
abline(lm(endur$endurance ~ endur$age), col = "blue")

plot(endur$endurance ~ endur$activeyears, main = "Endurance ~ Active Years", ylab = "Endurance", xlab = "Active Years")
abline(lm(endur$endurance ~ endur$activeyears), col = "blue")

# Regression analysis (unstandardized)
model1 <- lm(endur$endurance ~ endur$age)
summary(model1)

model2 <- lm(endur$endurance ~ endur$activeyears)
summary(model2)

model3 <- lm(endur$endurance ~ endur$age + endur$activeyears)
summary(model3)

# Regression analysis (standardized)
model1.z <- lm(scale(endur$endurance) ~ scale(endur$age))
summary(model1.z)

model2.z <- lm(scale(endur$endurance) ~ scale(endur$activeyears))
summary(model2.z)

model3.z <- lm(scale(endur$endurance) ~ scale(endur$age) + scale(endur$activeyears))
summary(model3.z)

# Model comparisons
comp1 <- anova(model1.z, model3.z)
comp1
comp2 <- anova(model2.z, model3.z)
comp2

# Correlations
drops <- c("pid")
cor(endur[,!(names(endur) %in% drops)])

# Prediction
predictors <- endur[2:3]
predicted <- predict.lm(model3.z, predictors)
cor(endur[4], predicted) # 0.4078414

# Quiz 8
# The predicted score on Y for a person who is one standard deviation above the mean on both predictors is:
# answer: mean is the Median of Residuals, SD is Residual standard error
# Median: 0.05269, Residual standard error: 0.9168
# X1 = X2 = 0.05269 + 0.9168
# Y' = 0.00 - 0.2402*X1 + 0.4044*X2 = 0.1591903