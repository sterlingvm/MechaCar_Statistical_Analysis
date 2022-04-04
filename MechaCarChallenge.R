## MechaCarChallenge.RScript - Module 15 Challenge

# Step 0:
# Set working directory for RScript so files and resources are handy
setwd("/Users/username/Downloads/MechaCar_Statistical_Analysis")


## Deliverable 1

# 3. Use the library() function to load the dplyr package
library(dplyr)

#4. Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
mecha_mpg <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

#5. Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) 

# EXTRA: remove the independent variables that have statistically insignificant impact in predicting mpg:
lm(mpg ~ vehicle_length + ground_clearance, data=mecha_mpg)
summary(lm(mpg ~ vehicle_length + ground_clearance, data=mecha_mpg)) 



## Deliverable 2

#2. Import and read in the Suspension_Coil.csv file as a table
coil_mechacar <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

#3. Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- coil_mechacar %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                           .groups = 'keep') 
# Check dataframe
total_summary

#4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to 
# group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- coil_mechacar  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                          .groups = 'keep') 
# Check dataframe
lot_summary

# Visualize the coil_mechacar data - box plot (WHOLE LOT):
plt1 <- ggplot(coil_mechacar,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

# Visualize the coil_mechacar data - box plot (BY LOT):
plt2 <- ggplot(coil_mechacar,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt2 + geom_boxplot()



## Deliverable 3

#1. use t.test() to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(coil_mechacar$PSI,mu=1500)
# p-value > 0.05


#2. Write 3 t.test() functions using subset() to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
lot1 <- subset(coil_mechacar, Manufacturing_Lot=="Lot1")
lot2 <- subset(coil_mechacar, Manufacturing_Lot=="Lot2")
lot3 <- subset(coil_mechacar, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

# Lot #3's p-value is the only one < 0.05 and thus statistically significant

# External Note: log10 was not used as the data was not skewed and did not need any smoothing



