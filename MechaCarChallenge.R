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

