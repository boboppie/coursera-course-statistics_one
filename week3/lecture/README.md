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