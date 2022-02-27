# AutosRUs analysis

## Overview of analysis
AutosRUs is a large car manufacturing company that wants to use statistical analysis to help with their decision making process.

### Resources
* Data Sources: MechaCar_mpg.csv, Suspension_Coil.csv
* Software: RStudio

## GitHub has disabled LFS for my account due to the fact that I have exceeded my data storage limit. 
### I have added "*.csv" to my .gitignore file, so my datafiles are not uploaded to my GitHub page.


## Linear Regression to predict MPG
![Linear Regression](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/MPG_linear_regression.png)
#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The vehicle length and ground clearance are unlikely to provide non-random amounts of variance.  The other variables do
introduce random amounts of variance.
Multiple linear regression r-squared value is 0.7149.  The p-value is 5.35e-11.

#### Is the slope of the linear model considered to be zero? Why or why not?
1. cor(MCmpg$mpg,MCmpg$vehicle_length) r-value moderate correlation
[1] 0.6094798
r-squared = 0.3715
p-value = 2.632e-06 (much less than 0.05%)
The slope of the line is not zero.

2. cor(MCmpg$mpg,MCmpg$vehicle_weight) r-value very weak correlation
[1] 0.09068314
r-squared = 0.008223
p-value = 0.5311 (much higher than 0.05%)
The slope of the line is close to zero.

3. cor(MCmpg$mpg,MCmpg$spoiler_angle) very weak negative correlation
[1] -0.02083999
r-squared = 0.0004343
p-value = 0.8858 (much higher than 0.05%)
The slope of the line is close to zero.

4. cor(MCmpg$mpg,MCmpg$ground_clearance) weak correlation
[1] 0.3287489
r-squared = 0.1081
p-value = 0.01975 (much lower than 0.05%)
The slope of the line is not zero.

5. cor(MCmpg$mpg,MCmpg$AWD) very weak negative correlation
[1] -0.1416698
r-squared = 0.02007
p-value = 0.3264 (much lower than 0.05%)
The slope of the line is close to zero.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?



## Summary Statistics on Suspension Coils
![Total_Summary](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/total_summary_df.png)


![Lot_Summary](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_df.png)


## T-Tests on Suspension Coils
![total dataframe](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/t_test_full_dataframe.png)

![T-Test Lot 1](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot_1.png)

![T-Test Lot 2](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot_2.png)

![T-Test Lot 3](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot_3.png)



## Study Design: MechaCar vs. Competition


=======

