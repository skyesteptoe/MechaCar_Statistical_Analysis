# load packages
library(dplyr)
library(tidyverse)

# Deliverable 1

# Import and read csv file
mecha_car <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Create linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)

# Use summary function to determine p-value and r-squared values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car))

# Deliverable 2
# Import and read in Suspension Coil data-set
susp_coil <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Create summary to capture mean, med, var, sd of the susp coil's PSI column
total_summary <- susp_coil %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD=sd(PSI), .groups = 'keep')

# Write another summary that groups by each manufacturing lot
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot)  %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD=sd(PSI), .groups = 'keep')

# Deliverable 3

# Write a script using t.test() to determine if PSI across lots is statistically different from population mean of 1500 PSI
t.test(susp_coil$PSI, mu=1500)

# Write three more scripts using t.test() and subset() to determine if PSI for each lot is statistically different from population mean of 1500 PSI
lot1 <- susp_coil %>% subset(Manufacturing_Lot=="Lot1")
t.test(lot1$PSI, mu=1500)

lot2 <- susp_coil %>% subset(Manufacturing_Lot=="Lot2")
t.test(lot2$PSI, mu=1500)

lot3 <- susp_coil %>% subset(Manufacturing_Lot=="Lot3")
t.test(lot3$PSI, mu=1500)
