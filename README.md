# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Linear Regression](https://user-images.githubusercontent.com/80363261/123548050-d6f55c80-d728-11eb-88a0-26e668ee5c57.png)
![Linear Regeression Summary](https://user-images.githubusercontent.com/80363261/123548064-e5437880-d728-11eb-94ff-c643447dde4a.png)

Reviewing the linear regression output from the mpg_data we can see there are two coefficencies, ground clearance and vehicle length, that provide a non-random amount of variance to the mpg values. With a p-value of 5.35e-11 this is substantially lower than the significance level of each of the variables tested, we must regect the null hypothesis that the slope of the linear regression is equal to zero. As this model only predicts two variables, ground clearance and vehicle length, this is not a very effictive model for predicting MPG.

## Summary Statistics on Suspension Coils

![total summary](https://user-images.githubusercontent.com/80363261/123548085-f68c8500-d728-11eb-9205-1e19d032a8a6.png)
![Lot summary](https://user-images.githubusercontent.com/80363261/123548088-f9877580-d728-11eb-88ae-fac02eb187bb.png)

Given the current parameters of the variance of the suspension coils must not exceed 100 pounds per square inch we see that as a whole the design specifications are being met. However by looking at the individual manufacturing lot we can see that Lot 3 is outside that design spec. At 170.286 variance they are well out side the required level and compared to the other manufacturing lots they are a substantial outlier.

## T-Tests on Suspension Coils

![Lot T-tests](https://user-images.githubusercontent.com/80363261/123548094-00ae8380-d729-11eb-8e44-9f464c5bc6bb.png)

The t-tests show that while all of the lots are not equal to the mean of 1500 psi, lots 1 and 2 are very close, and 3 is significantly off. The results from Lot3 is effecting the data analysis and could be skewing the data in a detrimental way.

![Boxplot Lots](https://user-images.githubusercontent.com/80363261/123548103-086e2800-d729-11eb-9c00-192ce2c5c8ae.png)

## Study Design: MechaCar vs. Competition

The MechaCar will need to be tested against comparable vehicles. I will be looking to compare vehicle prices and the safety ratings. We will need to take prices of similar vehicles and take a look at industry safety ratings. 

Null hypothesis: Vehicles with an above average price will always have an above average safety ratings.
Alternative hypothesis: Vehicles with an above average price will not always have an above average safety rating.

We will be doing a linear regression to identify a linear relationship with higher safety ratings and higher prices of vehicles. Also we will be doing a t-test to establish the significance of the linear realationship. 

For this analysis we will be needing industry safety ratings data and prices of comparable vehicles. 
