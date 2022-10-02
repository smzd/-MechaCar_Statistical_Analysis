## Linear Regression to Predict MPG

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

P value for the vehicle_length  is 2.60e-12 and ground_clearance  is 5.21e-08. Since the P value is small, they are the ones that provide a non-random amount of variance to the mpg values in the dataset.

Is the slope of the linear model considered to be zero? Why or why not?

The P-value for our model is 5.35e-11. To reject the null hypothesis significance level should be less than 0.05%. The p-value for the regression model is so significantly low that we can leave the null hypothesis.

Does this linear model predict the mpg of MechaCar prototypes effectively? Why or why not? 

The R-squared value is  0.7149. This tells us there are 71.49% of the mpg prediction of MechaCar prototypes are effective. Therefore we can confirm the findings to be successful. 

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coil

Lot 1 =0.980 and Lot 2= 7.47  passes the design specifications for the MechaCar suspension coils; the variance of the suspension coils did not exceed 100 pounds per square inch. However, Lot 3=170 doesn’t meet the manufacturer’s requirement of not exceeding 100 pounds per square inch suspension coil. 

From an individual lot perspective, lots 1 and 2 passes the mandated 100 PSI variance of the suspension coils with even tighter variability. They are statistically more consistent than the total sample population (within ~1 PSI and ~7.5 PSI, respectively).

However, lot three does not meet the suspension coil PSI variance requirement, with a variance of ~170.30. We can interpret that lot three disproportionally skew the total manufacturer's contention to the right. We can assume that there are data points from lot three that would be considered outliers, as the SD from the mean is 13 pounds per square inch.

## Study Design: MechaCar vs. Competition

We are designing a thesis based on MechaCar vs. their competitors. There are essential attributes to consider for future improvement of mechanical fuel efficiency. 

To do so, we will use Multiple Linear Regression to test our thesis based on how we can improve fuel efficiency. We need to work on two regression models to compare and contrast; MechaCar vs. Competition. 

Multiple Linear Regression models will have independent variables and one dependent variable.

Dependent variable: fuel efficiency / mileage
Independent variable 1: Vehicle weight 
Independent variable 2: Horsepower
Independent variable 3: Vehicle cost

After creating multiple linear regression models, we need to calculate our statistical metrics using the summary() function. In the summary() function output we will obtain Pr(>|t|) value for each variable. We can then reject our null hypothesis by gathering P values to examine whether they are below 0.05% for any of the variables. 

Null hypothesis: No difference between fuel efficiency and Vehicle weight, Horsepower, and Vehicle cost for MechaCar and their competitors.

Hypothesis: fuel efficiency depends on either or all variables such as Vehicle weight, Horsepower, and Vehicle cost for MechaCar and their competitors.

