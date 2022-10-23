# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

## 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
In this model, we included all five available variables to measure their impact on the mpg of MechaCars vehicles. Using a multiple linear regression model, three variables as well as the y-intercept returned significant p-values below the 0.05 cut-off. Vehichle length, vehicle weight, and ground clearance contribute to mpg of these vehicles and this impact is non-random (p<0.05). The significance of the intercept is <0.05 indicating that other variables influence mpg that the intercept accounts for, in part. 

## 2. Is the slope of the linear model considered to be zero? 
The p-value for the slope is 5.08 x 10-8 which is significantly less than our assumed significance p-value (p=0.05). As such, we reject the null hypothesis that the slope of our linear model is zero. 

## Does this linear model predict mpg of MechaCar prototypes effectively?
This linear model effectively (but not completely) predicts mpg of MechaCar prototypes based on an r-square of 0.7 and an overall p-value for the model of 5.35 x 10-11 (p<.05). An r-square approaching 1.0 indicates that the model more completely predicts the outcome (mpg, in this case). Given our r-squared of 0.7 and not 0.99, there are clearly additional factors that predict mpg.

![image](linreg.png)