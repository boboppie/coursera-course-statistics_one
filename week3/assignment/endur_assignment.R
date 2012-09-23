# Week3 Assignment script

library(psych)

endur <- read.delim("./DAA.03.txt")

# Q1 - Correlation between age and endurance
cor(endur[2], endur[4]) # -0.1258528

# Q2 - Unstandardized regression coefficient for age, predicting endurance 
model1 <- lm(endur$endurance ~ endur$age)
summary(model1) # -0.13472

# Q3 - Standardized regression coefficient for age, predicting endurance
model1.z <- lm(scale(endur$endurance) ~ scale(endur$age))
summary(model1.z) # -1.259e-01

# Q4 - Unstandardized regression coefficient for age, predicting endurance (while also using activeyears to predict endurance)
model3 <- lm(endur$endurance ~ endur$age + endur$activeyears)
summary(model3) # -0.2571

# Q5 - Standardized regression coefficient for age, predicting endurance (while also using activeyears to predict endurance)
model3.z <- lm(scale(endur$endurance) ~ scale(endur$age) + scale(endur$activeyears))
summary(model3.z) # -2.402e-01

# Q6 - Correlation between activeyears and endurance
cor(endur[3], endur[4]) # 0.3365433

# Q7 - Unstandardized regression coefficient for activeyears, predicting endurance
model2 <- lm(endur$endurance ~ endur$activeyears)
summary(model2) # 0.7625

# Q8 - Standardized regression coefficient for activeyears, predicting endurance
model2.z <- lm(scale(endur$endurance) ~ scale(endur$activeyears))
summary(model2.z) # 3.365e-01

# Q9 - Unstandardized regression coefficient for activeyears, predicting endurance (while also using age to predict endurance)
# Model3 0.9163 

# Q10 - Standardized regression coefficient for activeyears, predicting endurance (while also using age to predict endurance)
# Model3.z 4.044e-01