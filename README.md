# MechaCar_Statistical_Analysis

### Linear Regression to Predict
The variable coefficients that provided a non-random amount of variance to the mpg values in the dataset are the ground clearance and vehicle length because their p values were less than 0.05, meaning that we can reject the null hypothesis on those variables since they are considered significant. Logically, speaking, it makes sense that those three factors affect the mpg of a vehicle, the clearance from ground determines how much more wind resistance the car gets, a lower car has less drag and the vehicle lengths affect the aerodynamics of the cars. The slope is considered to be greater than zero because most of the coefficients are positive. Only the AWD and the y intercept are negative but they are outweighed by the other coefficients that are positive. This does not predict the mpg of the Mechacars efficiently because the r square value is 68%, so the variables that we used only explain 68% of the model and you normally want >95% rsquare value. 


### Summary Statistics on Suspension
The manufacturing data does not meet the design specifications for all manufacturing lots because in lot 3, it exceeds the 100 psi, variance. The variance for lot 3 is 170 psi, which is not going to pass our test. WHen you look at the total data however, the psi is under 100 so it would pass that total exam but at a lot level, lot 3 needs to be looked at.

### T-Tests on Suspension Coils
The t test results for lot 1 and 2 were 1500 and 1500.2 respectively with both having p values greater than 0.05. However, for lot 3 the mean was 1496 and the p value was <0.05 which means that there is a significant deviance from the std. mean. 

### Study Design: MechaCar vs Competition
In my study I would use statistical testing on mpg, speed, horsepower, cylinder count, and anything else a survey sent out that customers fill out to show us what they think is most important. I would compare all of those tests to see where we are outperforming the market and where we are lacking. Then based on the results that need improvement, I would do AB testing to see which product changes would impact our customer happiness the most. The null hypothesis is that there is no difference between our customer satisfaction and the competitors due to the specifications of the Mecha Cars. I would use a multiple linear regression model to determine which ones have a p value less than 0.05. I need customer data and competitor data on top of the mecha car data that we already have. 
