# MechaCar_Statistical_Analysis

## Overview

The purpose of this project was 2-fold: first, design a linear regression model to determine how certain vehicle factors influence the vehicle's mpg. These vactors included vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD. Second, using t-tests, the pound per square inch (PSI) of suspension coils in cars from various manufacturing lots were compared. Finally, a statistical study was designed to compare MechaCar vehicles against other vehicle manufacturers.

To view the R script used to generate the linear regression and t-tests, click here: [R-script](link). 

## Linear Regression to Predict MPG
![image](link)

Looking at the linear regression model above, there are three main insights: 
1. Using the Pr(>|t|) value can determine which variables/ coefficients provide a non-random amount of variance to the mpg values in the dataset. In this case, the intercept, vehicle length, and ground clearance all provice non-random amounts of variance.
2. The p-value was set to 0.05 for significance. In this case, the p-value is much smaller than 0.05 (p=5.35e-11). This means that we can reject the null hypothesis. The null hypothesis in this case was that the slope of the linear regression line was 0. Since we reject the null hypothesis, the slope is not equal to 0. 
3. Using the r-squared value can help to determine if a model is predicting well. Two values are provided here, the multiple r-squared value at 0.7149, and the adjusted r-squared value at 0.6825. Multiple r-squared value is the traditional r-squared value over multiple variables. The more variables we have, the more the r-squared will increase. Adjusted r-squared adjusts for the increase and penalizes a high number of predictors. Generally speaking, a large difference between these two values means the model may be overfit. However, in this case they're very similar. Given the adjusted r-squared value of 0.6825, this model predicts the mpg of MechaCars well, but there may be some overfitting given that only a few of the used variables were significant. 

## Summary Statistics on Suspension Coils
![image](link)
![image](link)

According to design specifications for the MechaCar suspension coils, the variance of the coils must not exceed 100 pounds per square inch. In this case, as seen above, the variance for all coils was 62.3, well below the required 100. However, when split into 3 lots, the variance for Lot3 is much higher than 100, whereas the other 2 meet the requirements. Given this data, the coils in Lot3 likely do not meet the design standards, while the other 2 lots do. 

## T-Tests on Suspension Coils
![image](link)
![image](link)

In the above t-tests, the mean of all manufacturing lots against mean PSI of the population was conducted. The p-value for this test was 0.06, meaning we cannot reject the null hypothesis which states that the means are equal. When running the tests for each individual lot, we once again cannot reject the null hypothesis for Lots 1 and 2 stating these means are equal. However, we can reject the null hypothesis for Lot3 when significance is set at p=0.05 beacahse the p-value here is less than 0.05 at 0.04168. This means we can accept the alternative hypothesis stating that the means are different. 

## Study Design: MechaCar vs Competition

One interesting study design would be to conduct comparisons between MechaCar and competitors on key consumer metrics such as fuel efficiency, cost of car, and safety rating. In my opinion, one metric that is often used by consumers is the cost of a car. We can compare the cost of all cars via ANOVA and t-tests to determine if there is a significant difference between MechaCar and its competitors. Grouping car prices by other metrics (i.e. standardizing all other metrics such as horsepower, safety rating, vehicle type/ weight, etc.) prior to analysis would help to generate a better test. The null hypothesis in his case would be there is no difference in cost of car, while the alternative would be there is a difference in cost between MechaCar and its competitors. In order to be successful, we would require the cost of all cars, as well as the current data we have to help normalize cost to other metrics.

Another interesting study we can perform is linear regression on a metric such as cost and using all other variables including the company the car is bought from. Using linear regression to generate a model to predict cost would also, as above, generate a p-value and adjusted r-squared value that will determine if we are able to predict cost accurately with our given data. In addition, the model would determine whether the company provides a non-random amount of variance when determining cost, as shown in deliverable 1. 