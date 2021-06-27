#Deliverable 1
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

#Deliverable 2
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

#Deliverable 3
#t.test comparing psi against population
t.test(coil_data$PSI, lot_summary$Mean)

#t.test using subset of lot 1
Lot1 <- filter(coil_data, Manufacturing_Lot == 'Lot1')
t.test(coil_data$PSI, Lot1$PSI)

#t.test using subset of lot 2
Lot2 <- filter(coil_data, Manufacturing_Lot == 'Lot2')
t.test(coil_data$PSI,Lot2$PSI)

#t.test using subset of lot3 
Lot3 <- filter(coil_data, Manufacturing_Lot == 'Lot3')
t.test(coil_data$PSI,Lot3$PSI)

#create manufacturing lot boxplot
boxplot(Lot1$PSI, Lot2$PSI, Lot3$PSI, main = 'Boxplot', 
        xlab = 'Manufacturing Lot', ylab= 'PSI',
        names = c('Lot1', 'Lot2', 'Lot3'),
        col = c('red', 'green', 'blue'))