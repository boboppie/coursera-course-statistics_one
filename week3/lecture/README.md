# Multiple Regression Analysis

## Dataset
[supplemental-stats1_ex04.txt](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week3/lecture/supplemental-stats1_ex04.txt)

    pid  age	activeyears	endurance
    1	60	10	18
    2	40	9	36
    3	29	2	51
    4	47	10	18
    5	48	9	23
    ...
    
## Plots
![endurence-age](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week3/lecture/plots/endurance_age.png)

![endurence-activeyears](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week3/lecture/plots/endurance_activeyears.png)

## Model Summary (unstandardized)
### Model-1 Endurance =  33.15667 + -0.13472(Age)

    Call:
    lm(formula = endur$endurance ~ endur$age)
    
    Residuals:
         Min       1Q   Median       3Q      Max 
    -25.0734  -7.6331   0.0974   6.7710  30.8696 
    
    Coefficients:
                Estimate Std. Error t value Pr(>|t|)    
    (Intercept) 33.15667    3.42033   9.694   <2e-16 ***
    endur$age   -0.13472    0.06812  -1.978   0.0491 *  
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 
    
    Residual standard error: 10.76 on 243 degrees of freedom
    Multiple R-squared: 0.01584,  Adjusted R-squared: 0.01179 
    F-statistic: 3.911 on 1 and 243 DF,  p-value: 0.04911 
    
### Model-2 Endurance = 18.3921 + 0.7625(Active Years)

    Call:
    lm(formula = endur$endurance ~ endur$activeyears)
    
    Residuals:
         Min       1Q   Median       3Q      Max 
    -23.7296  -7.0671   0.5579   5.7454  31.0829 
    
    Coefficients:
                      Estimate Std. Error t value Pr(>|t|)    
    (Intercept)        18.3921     1.5998  11.496  < 2e-16 ***
    endur$activeyears   0.7625     0.1369   5.571  6.7e-08 ***
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 
    
    Residual standard error: 10.21 on 243 degrees of freedom
    Multiple R-squared: 0.1133,  Adjusted R-squared: 0.1096 
    F-statistic: 31.04 on 1 and 243 DF,  p-value: 6.697e-08

### Model-1 Endurance ~ 29.3952 + -0.2571(Age) + 0.9163(Active Years)

    Call:
    lm(formula = endur$endurance ~ endur$age + endur$activeyears)
    
    Residuals:
         Min       1Q   Median       3Q      Max 
    -21.7994  -6.9040   0.5701   5.6326  27.2279 
    
    Coefficients:
                      Estimate Std. Error t value Pr(>|t|)    
    (Intercept)        29.3952     3.2054   9.171  < 2e-16 ***
    endur$age          -0.2571     0.0655  -3.925 0.000113 ***
    endur$activeyears   0.9163     0.1386   6.610 2.44e-10 ***
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 
    
    Residual standard error: 9.919 on 242 degrees of freedom
    Multiple R-squared: 0.1663,  Adjusted R-squared: 0.1594 
    F-statistic: 24.14 on 2 and 242 DF,  p-value: 2.754e-10
    
## Model Summary (standardized)
### Model-1.z Endurance =  0.00 + -0.13(Age)

    Call:
    lm(formula = scale(endur$endurance) ~ scale(endur$age))
    
    Residuals:
         Min       1Q   Median       3Q      Max 
    -2.31751 -0.70552  0.00901  0.62584  2.85325 
    
    Coefficients:
                       Estimate Std. Error t value Pr(>|t|)  
    (Intercept)      -7.093e-18  6.351e-02   0.000   1.0000  
    scale(endur$age) -1.259e-01  6.364e-02  -1.978   0.0491 *
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 
    
    Residual standard error: 0.9941 on 243 degrees of freedom
    Multiple R-squared: 0.01584,    Adjusted R-squared: 0.01179 
    F-statistic: 3.911 on 1 and 243 DF,  p-value: 0.04911 
    
### Model-2.z Endurance = 0.00 + 0.34(Active Years)

    Call:
    lm(formula = scale(endur$endurance) ~ scale(endur$activeyears))
    
    Residuals:
         Min       1Q   Median       3Q      Max 
    -2.19330 -0.65320  0.05157  0.53104  2.87296 
    
    Coefficients:
                               Estimate Std. Error t value Pr(>|t|)    
    (Intercept)              -1.340e-17  6.028e-02   0.000        1    
    scale(endur$activeyears)  3.365e-01  6.041e-02   5.571  6.7e-08 ***
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 
    
    Residual standard error: 0.9436 on 243 degrees of freedom
    Multiple R-squared: 0.1133,    Adjusted R-squared: 0.1096 
    F-statistic: 31.04 on 1 and 243 DF,  p-value: 6.697e-08

### Model-3.z Endurance = 0.00 + -0.24(Age) + 0.40(Active Years)

    Call:
    lm(formula = scale(endur$endurance) ~ scale(endur$age) + scale(endur$activeyears))
    
    Residuals:
         Min       1Q   Median       3Q      Max 
    -2.01489 -0.63813  0.05269  0.52061  2.51664 
    
    Coefficients:
                               Estimate Std. Error t value Pr(>|t|)    
    (Intercept)              -4.223e-17  5.857e-02   0.000 1.000000    
    scale(endur$age)         -2.402e-01  6.119e-02  -3.925 0.000113 ***
    scale(endur$activeyears)  4.044e-01  6.119e-02   6.610 2.44e-10 ***
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 
    
    Residual standard error: 0.9168 on 242 degrees of freedom
    Multiple R-squared: 0.1663,    Adjusted R-squared: 0.1594 
    F-statistic: 24.14 on 2 and 242 DF,  p-value: 2.754e-10
    
## Model Comparisons (ANOVA)
### Model-1.z ~ Model-3.z

    Analysis of Variance Table
    
    Model 1: scale(endur$endurance) ~ scale(endur$age)
    Model 2: scale(endur$endurance) ~ scale(endur$age) + scale(endur$activeyears)
      Res.Df    RSS Df Sum of Sq      F    Pr(>F)    
    1    243 240.13                                  
    2    242 203.41  1    36.721 43.687 2.438e-10 ***
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 
    
RSS(residul sum of squares) 240.13 -> 203.41
    
### Model-2.z ~ Model-3.z

    Analysis of Variance Table
    
    Model 1: scale(endur$endurance) ~ scale(endur$activeyears)
    Model 2: scale(endur$endurance) ~ scale(endur$age) + scale(endur$activeyears)
      Res.Df    RSS Df Sum of Sq      F    Pr(>F)    
    1    243 216.36                                  
    2    242 203.41  1     12.95 15.406 0.0001131 ***
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

RSS(residul sum of squares) 216.36 -> 203.41

## Correlations

                       age activeyears  endurance
    age          1.0000000   0.2826635 -0.1258528
    activeyears  0.2826635   1.0000000  0.3365433
    endurance   -0.1258528   0.3365433  1.0000000
    
## Prediction

    predictors <- endur[2:3]
    predicted <- predict.lm(model3.z, predictors)
    cor(endur[4], predicted) # 0.4078414
    
The correlation between the observed outcome Y and Y predicted by the model is approximately: 0.40    