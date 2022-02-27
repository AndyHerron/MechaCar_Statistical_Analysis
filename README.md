# AutosRUs analysis

## Overview of analysis
AutosRUs is a large car manufacturing company that wants to use statistical analysis to help with their decision making process.

### Resources
* Data Sources: MechaCar_mpg.csv, Suspension_Coil.csv
* Software: RStudio

## GitHub has disabled LFS for my account due to the fact that I have exceeded my data storage limit. 
### I have added "*.csv" to my .gitignore file, so my datafiles are not uploaded to my GitHub page.


## Linear Regression to predict MPG
![Checkout Times for Users](https://github.com/AndyHerron/bikesharedata/blob/main/images/viz_1.png)
#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The vehicle length and ground clearance are unlikely to provide non-random amounts of variance.  The other variables do
introduce random amounts of variance.

Multiple linear regression r-squared value is 0.7149.  The p-value is 5.35e-11.

> cor(MCmpg$mpg,MCmpg$vehicle_length) r-value moderate correlation
[1] 0.6094798
r-squared = 0.3715
p-value = 2.632e-06 (much less than 0.05%)
The slope of the line is not zero.

> cor(MCmpg$mpg,MCmpg$vehicle_weight) r-value very weak correlation
[1] 0.09068314
r-squared = 0.008223
p-value = 0.5311 (much higher than 0.05%)
The slope of the line is close to zero.

> cor(MCmpg$mpg,MCmpg$spoiler_angle) very weak negative correlation
[1] -0.02083999
r-squared = 0.0004343
p-value = 0.8858 (much higher than 0.05%)
The slope of the line is close to zero.

> cor(MCmpg$mpg,MCmpg$ground_clearance) weak correlation
[1] 0.3287489
r-squared = 0.1081
p-value = 0.01975 (much lower than 0.05%)
The slope of the line is not zero.

> cor(MCmpg$mpg,MCmpg$AWD) very weak negative correlation
[1] -0.1416698
r-squared = 0.02007
p-value = 0.3264 (much lower than 0.05%)
The slope of the line is close to zero.

## Summary Statistics on Suspension Coils
![Checkout Times for Users](https://github.com/AndyHerron/bikesharedata/blob/main/images/viz_1.png)
![Checkout Times for Users](https://github.com/AndyHerron/bikesharedata/blob/main/images/viz_1.png)

## T-Tests on Suspension Coils
![Checkout Times for Users](https://github.com/AndyHerron/bikesharedata/blob/main/images/viz_1.png)


## Study Design: MechaCar vs. Competition


=======

# perform a linear regression for mpg and vehicle_length.
lm(mpg ~ vehicle_length,MCmpg) #create linear model
# find the p-value and r-squared values using Summary function.
summary(lm(mpg ~ vehicle_length,MCmpg)) #summarize linear model

# perform a linear regression for mpg and vehicle_weight.
lm(mpg ~ vehicle_weight,MCmpg) #create linear model
# find the p-value and r-squared values using Summary function.
summary(lm(mpg ~ vehicle_weight,MCmpg)) #summarize linear model


Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?