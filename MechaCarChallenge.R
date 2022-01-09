# Deliverable 1

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

#Deliverable 2

#2 Import CSV as table
Coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)