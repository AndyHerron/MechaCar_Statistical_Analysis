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
The vehicle length and ground clearance are the strongest indicators of a vehicle's MPG.  The other variables do
introduce random amounts of variance.
Multiple linear regression r-squared value is 0.7149.  The p-value is 5.35e-11.
These results indicate that all the variables together do have a fairly strong indication of what the vehicle's MPG might be.

#### Is the slope of the linear model considered to be zero? Why or why not?
It is almost impossible to graph multiple-linear regression models, so I have looked at each of the variables independently.
1. cor(MCmpg$mpg,MCmpg$vehicle_length) r-value moderate correlation
[1] 0.6094798
r-squared = 0.3715
p-value = 2.632e-06 (much less than 0.05%)
The slope of the line is not zero (and thus does indicate that there is a relationship between a vehicle's length and it's MPG rating.)

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
The slope of the line is not zero (and thus does indicate that there is a relationship between ground clearance and MPG rating.)

5. cor(MCmpg$mpg,MCmpg$AWD) very weak negative correlation
[1] -0.1416698
r-squared = 0.02007
p-value = 0.3264 (much higher than 0.05%)
The slope of the line is close to zero.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Multiple linear regression r-squared value is 0.7149.  The p-value is 5.35e-11.  These results indicate that the linear model does predict the MPG effectively,
but because several of the individual variables have weak correlations it is likely that there are other factors that would be more accurate predictors.
The vehicle weight, spoiler angle, and AWD variables have high p-values and don't accurately predict MPG.  Using these variables only seems to include more randomness into the model.

## Summary Statistics on Suspension Coils
![Total_Summary](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/total_summary_df.png)
The design specs for MechaCar suspension coils dictate that the variance must not exceed 100 PSI.  The statistics for the overall production run do fall within those tolerances.
Only looking at the overall specs would indicate that the production process is running as it should, and putting out a quality product.

![Lot_Summary](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_df.png)
Looking at the variance for each individual production lot does indicate that there are problems.  The variances and standard deviations get progressively worse with each lot.
Lot 1 produced a consistent quality product with low variances and an StdDev of less than 1.  Lot 2 got worse but was still within tolerances.  Lot 3 is horrible and should be rejected. The measured variance for Lot 3
is almost double the acceptible limit, and a StdDev of 13 indicates that the data is wildly inconsistent.

## T-Tests on Suspension Coils
![total dataframe](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/t_test_full_dataframe.png)
A t-test was performed to to determine if the PSI mean values for the data we were provided matches the 1500 PSI of the population dataset. While the mean of our dataset is slightly lower than 1500, it is within tolerances and a 95% confidence level.
The t-test for the entire dataset has a p-value of 0.06, which is higher than the standard accepted value of 0.05.  This indicates that there is some problem with the data that should be investigated.
Or at least that more samples and tests should be run.

![T-Test Lot 1](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot_1.png)
The t-test for Lot 1 is good.  The p-value is very low and the mean of this test is spot on the population mean of 1500.
 
![T-Test Lot 2](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot_2.png)
The t-test for Lot 2 is also pretty good.  The p-value is not as low as Lot 1, but still much lower than 0.05.

![T-Test Lot 3](https://github.com/AndyHerron/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot_3.png)
The t-test for Lot 3 is bad.  The p-value for Lot 3 is 0.15, significantly higher than 0.05.  Also the higher limit of the 95 percent confidence interval is below 1500, which indicates almost the entire set of Lot 3 is below the population mean.


## Study Design: MechaCar vs. Competition

I would suggest that MechaCar conducts a fairly high-level statistical analysis of customer satisfaction. Consumer Reports does a similar survey every year for the various car manufacturers and puts out the results.
Customer satisfaction is a broad concept that includes many facets including: vehicle reliability, ease of maintenance, purchase price vs. perceived value, etc.  But it can also be boiled down into a fairly simple rating of
overall customer satisfaction that can be expressed as a numerical value (between 1 and 10, or up to 5 stars).  The data would have to be collected from surveys of vehicle owners, and the management of MechaCar would have to
decide what an acceptable outcome would be to determine the null hypothesis.  I would suggest that the null hypothesis would be "Consumers rate MechaCar among the top 10 vehicle manufacturers."  The alternative hypothesis is
"Consumers rate MechaCar below the top 10 vehicle manufacturers."  The metric to test would be the "customer satisfaction" rating that MechaCar owners give in their answers to the survey, and then compare that to the ratings
that are collected about the other auto manufacturers.


=======

