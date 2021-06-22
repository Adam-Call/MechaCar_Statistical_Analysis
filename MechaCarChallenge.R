# Read in the MechaCar_mpg.csv
mpg_data <- read.csv(file='Resources\\MechaCar_mpg.csv',
                     check.names=F,stringsAsFactors = F)

# add tidyverse library
library(tidyverse)

#Perform linear regression on the mpg_data
lm(mpg~vehicle_weight+spoiler_angle+
     ground_clearance+AWD+vehicle_length, data = mpg_data)

#summary of linear regression.
summary(lm(mpg~vehicle_weight+spoiler_angle+
             ground_clearance+AWD+vehicle_length, data = mpg_data))

#read in the Suspension_coil.csv
coil_data <- read.csv(file = 'Resources\\Suspension_Coil.csv', 
                      check.names=F, stringsAsFactors = F )

#create total summary data frame
total_summary <- coil_data %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), 
            Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#create lot summary data frame
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), 
            Variance=var(PSI), SD=sd(PSI), .groups = 'keep')