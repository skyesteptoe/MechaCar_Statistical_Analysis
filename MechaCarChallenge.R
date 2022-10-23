# load packages
library(dplyr)
library(tidyverse)

# Deliverable 1

# Import and read csv file
mecha_car <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Create linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)

# Use summary function to determine p-value adn r-squared values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car))