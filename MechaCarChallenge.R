# Deliverable 1
#load dplyr library
library(dplyr)

#Read in mpg data
mpg_data <-read.csv(file = "MechaCar_mpg.csv")

#Perform linear regression and summary
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_data)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_data))

# Deliverable 2
#read in suspension coil data
coil_data <-read.csv(file = "Suspension_Coil.csv")

#perform summary
total_summary <- coil_data %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))

#Deliverable 3
#T-test
t.test(coil_data$PSI, mu = 1500)

#T-test subsets
#Generate lots
Lot1 = subset(coil_data, Manufacturing_Lot == 'Lot1')
Lot2 = subset(coil_data, Manufacturing_Lot == 'Lot2')
Lot3 = subset(coil_data, Manufacturing_Lot == 'Lot3')

#perform t-tests
t.test(Lot1$PSI, mu = 1500)
t.test(Lot2$PSI, mu = 1500)
t.test(Lot3$PSI, mu = 1500)
