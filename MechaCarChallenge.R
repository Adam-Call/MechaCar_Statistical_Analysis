# Read in the MechaCar_mpg.csv
mpg_data <- read.csv(file='Resources\\MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# add tidyverse library
library(tidyverse)

#Perform linear regression on the mpg_data
lm(vehicle_length~vehicle_weight+spoiler_angle+
     ground_clearance+AWD+mpg, data = mpg_data)

#summary of linear regression.
summary(lm(vehicle_length~vehicle_weight+spoiler_angle+
             ground_clearance+AWD+mpg, data = mpg_data))