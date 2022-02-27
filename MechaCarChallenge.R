# load in the libraries
library(magrittr)
library(dplyr)
library(tidyverse)
library(jsonlite)

# Read in the file as a dataframe.
MCmpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
head(MCmpg)

# Perform linear regression with all six variables (columns).
# Evaluate using multiple variables - mpg, engine size, rear axle ratio, weight, hp
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MCmpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MCmpg)) #generate summary statistics

cor(MCmpg$mpg,MCmpg$vehicle_length) #calculate correlation coefficient
cor(MCmpg$mpg,MCmpg$vehicle_weight) #calculate correlation coefficient
cor(MCmpg$mpg,MCmpg$spoiler_angle)
cor(MCmpg$mpg,MCmpg$ground_clearance)
cor(MCmpg$mpg,MCmpg$AWD)

# perform a linear regression for mpg and vehicle_length.
lm(mpg ~ vehicle_length,MCmpg) #create linear model
# find the p-value and r-squared values using Summary function.
summary(lm(mpg ~ vehicle_length,MCmpg)) #summarize linear model

model <- lm(mpg ~ vehicle_length,MCmpg) #create linear model
yvals <- model$coefficients['vehicle_length']*MCmpg$vehicle_length +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MCmpg,aes(x=vehicle_length,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# perform a linear regression for mpg and vehicle_weight.
lm(mpg ~ vehicle_weight,MCmpg) #create linear model
# find the p-value and r-squared values using Summary function.
summary(lm(mpg ~ vehicle_weight,MCmpg)) #summarize linear model

model <- lm(mpg ~ vehicle_weight,MCmpg) #create linear model
yvals <- model$coefficients['vehicle_weight']*MCmpg$vehicle_weight +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MCmpg,aes(x=vehicle_weight,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# perform a linear regression for mpg and spoiler angle.
lm(mpg ~ spoiler_angle,MCmpg) #create linear model
# find the p-value and r-squared values using Summary function.
summary(lm(mpg ~ spoiler_angle,MCmpg)) #summarize linear model

model <- lm(mpg ~ spoiler_angle,MCmpg) #create linear model
yvals <- model$coefficients['spoiler_angle']*MCmpg$spoiler_angle +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MCmpg,aes(x=spoiler_angle,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# perform a linear regression for mpg and ground clearance.
lm(mpg ~ ground_clearance,MCmpg) #create linear model
# find the p-value and r-squared values using Summary function.
summary(lm(mpg ~ ground_clearance,MCmpg)) #summarize linear model

model <- lm(mpg ~ ground_clearance,MCmpg) #create linear model
yvals <- model$coefficients['ground_clearance']*MCmpg$ground_clearance +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MCmpg,aes(x=ground_clearance,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# perform a linear regression for mpg and AWD.
lm(mpg ~ AWD,MCmpg) #create linear model
# find the p-value and r-squared values using Summary function.
summary(lm(mpg ~ AWD,MCmpg)) #summarize linear model

model <- lm(mpg ~ AWD,MCmpg) #create linear model
yvals <- model$coefficients['AWD']*MCmpg$AWD +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MCmpg,aes(x=AWD,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

