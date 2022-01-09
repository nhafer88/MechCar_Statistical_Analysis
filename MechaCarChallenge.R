#Deliverable 1#

#3 Load dplyr package
library(tidyverse)

#4 Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#5 Perform linear regression using the lm() function. In the lm() function, pass in all
# six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)

#6 Using the summary() function, determine the p-value and the r-squared value for the 
#linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))

#Deliverable 2#

#2 Import CSV as table
Coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#3 Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, 
#median, variance, and standard deviation of the suspension coil's PSI column.
coil_summary <-Coil_table %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#4 Group by
lot_summary <-Coil_table %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Deliverable 3#

#1 Use t.test() function to determine if the PSI across all manufacturing lots is statistically different 
#from the population mean of 1,500 pounds per square inch.
t.test(Coil_table$PSI, mu=1500)

#2 Using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot 
#is statistically different from the population mean of 1,500 pounds per square inch:

#a) PSI for manufacturing-lot1 using subset()
population1 = subset(Coil_table, Manufacturing_Lot =='Lot1')
t.test(population1$PSI, mu=1500)

#b) PSI for manufacturing-lot2 using subset()
population2 = subset(Coil_table, Manufacturing_Lot =='Lot2')
t.test(population2$PSI, mu=1500)

#c) PSI for manufacturing-lot3 using subset()
population3 = subset(Coil_table, Manufacturing_Lot =='Lot3')
t.test(population3$PSI, mu=1500)
