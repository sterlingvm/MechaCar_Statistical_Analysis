# MechaCar_Statistical_Analysis - AutosRUs

## Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

  Ground_clearance and vehicle_length provided a non-random amount of variance. Vehicle weight, spoiler_angle & AWD provided random amounts of variance and had p-values that proved statistical insignificance. 

- Is the slope of the linear model considered to be zero? Why or why not?

  The slope is not considered zero. 
  vehicle_length & ground_clearance show statistical significance, so the resulting slopes for those significant variables would comprise the resulting slope and would thus be > 0. 
  The p-value for our overall tests also proves to be < 0.05.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

  With an r^2 value of 0.7149, the test accounts for approximately 71% of all variance in the data. 
  This means that the model will predict mpg correctly roughly 71% of the time. 
  Other factors that were not captured in the datasaet may be contributing to the mpg variability for the MechaCar prototypes.
  
## Summary Statistics on Suspension Coils,
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

  Lots 1 and 2 remain significantly below the design specifications limits, Lot 1 shows variance of 0.98 pounds while Lot 2 shows variance of 7.47 pounds.
  Lot 3, however, fails to meet the design specification limit with a variance of 170 pounds. This well exceeds the variance limit of 100 pounds

## T-Tests on Suspension Coils

# All Lots - Cumulative
![All Lots](Resources/Images/all_lots.png?raw=true "All Lots One-Sample T-Test")
- We ran a one-sample t-test on the statistical significance of the recorded PSI measures against a population of 1500 people. The results came back statistically insignificant as the p-value of the t-test was 0.06028 which is > 0.05. This test was run for PSI statistics across all lots together.


# Lot 1
![Lot 1](Resources/Images/lot_1.png?raw=true "Lot 1 One-Sample T-Test")
- We ran a one-sample t-test on the statistical significance of the recorded PSI measures for Lot 1 individually agaisnt a population of 1500 people. The results came back statistically insignificant as the p-value of the t-test was 1 which is > 0.05. 


# Lot 2
![Lot 2](Resources/Images/lot_2.png?raw=true "Lot 2 One-Sample T-Test")
- We ran a one-sample t-test on the statistical significance of the recorded PSI measures for Lot 2 individually agaisnt a population of 1500 people. The results came back statistically insignificant as the p-value of the t-test was 0.6072 which is > 0.05. 


# Lot 3
![Lot 3](Resources/Images/lot_3.png?raw=true "Lot 3 One-Sample T-Test")
- We ran a one-sample t-test on the statistical significance of the recorded PSI measures for Lot 3 individually agaisnt a population of 1500 people. The results came back statistically significant as the p-value of the t-test was 0.04168 which is < 0.05. This means that the PSI measurements recorded within Lot 3 individually are stastically accurate measurments as compared to data that would be collected in the real world for a lot full of 1500 cars. This means that research moving forward that uses Lot 3 data would be statistically accurate and reliable data to use for real, effective, and impactful studies for real world projections. 


# Results

- Outcome: Lot #3's p-value is the only one < 0.05 and is thus the only statistically significant PSI data and can be considered representative of a population size of 1500 cars.


## Study Design: MechaCar vs Competition

- A statistical study to prove how MechaCar performs against competition would center around fuel efficiency or carrying capacity. We'll focus on fuel efficiency. We would see how the mean for MechaCar's milage-per-gallon (mpg) compares to competitors' cars' overall average mileage per gallon

    - What metric or metrics are you going to test?:
    Milage per gallon for both MechaCar and a direct competitor to MechaCar
    
    - What is the null hypothesis or the alternative hypothesis?:
    H0: The average milage per gallon for MechaCar is similar/nearly identical to the competitor's cars' average milage per gallon.
    Ha: The average milage per gallon for MechaCar is different compared to the competitor's cars' average milage per gallon.

    
    - What statistical test would you use to test the hypothesis? And why?
    I would use a Two-Sample T-Test to test the hypothesis because it would allow us to directly compare the means of two samples from different populations and tests its statistical significance as well.
    
    - What data is needed to run a statistical test?
    The milage per gallon data for every car manufactured by the direct competitor that we'd like to test against.