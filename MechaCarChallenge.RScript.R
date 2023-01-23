library("dplyr")
## Read the CSV file
Mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

## Linear Regression to Predict MPG
summary(lm(Mecha_table$mpg~Mecha_table$vehicle_length + Mecha_table$vehicle_weight + Mecha_table$spoiler_angle + Mecha_table$ground_clearance + Mecha_table$AWD, Mecha_table))
View(data_frame)

library("tidyverse")
## Read the CSV file
Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

## The total summary dataframe has the mean, median, variance, and standard deviation for all manufacturing lots
total_summary <- Suspension_Coil_table %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI), .groups = 'keep')

lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI), .groups = 'keep')
## T-Tests on Suspension Coils

t.test(Suspension_Coil_table$PSI, mu=1500)
## T-Tests Lot1
t.test(subset(Suspension_Coil_table, Manufacturing_Lot=="Lot1")$PSI,mu=1500)
## T-Tests Lot2
t.test(subset(Suspension_Coil_table, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
## T-Tests Lot3
t.test(subset(Suspension_Coil_table, Manufacturing_Lot=="Lot3")$PSI,mu=1500)
