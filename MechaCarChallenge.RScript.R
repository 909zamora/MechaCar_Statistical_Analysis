#Importing dplr package
library(jsonlite)
library(tidyverse)

#Importing the mechaCar dataset
mecha_df <- read.csv('MechaCar_mpg.csv',check.names=F, stringsAsFactors = F) #read in dataset

#Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_df) #generate multiple linear regression model

#Obtaining further statistical metrics using summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_df)) #generate summary statistics

#Importing the mechaCar dataset
suspension_df <- read.csv('Suspension_Coil.csv',check.names=F, stringsAsFactors = F) #read in dataset

#Find mean median mode
total_summary <- suspension_df %>% summarize(Mean=mean(PSI), median=median(PSI), variance=var(PSI), std=sd(PSI), .groups='keep')
total_summary

lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), median=median(PSI), variance=var(PSI), std=sd(PSI), .groups='keep')
lot_summary

#T-test for all of the data
# T test across all lots
t.test(suspension_df$PSI,mu=1500)

# T test for lot 1 
t.test(subset(suspension_df,Manufacturing_Lot== "Lot1")$PSI,mu=1500)

# T test for lot 2 
t.test(subset(suspension_df,Manufacturing_Lot== "Lot2")$PSI,mu=1500)

# T test for lot 3
t.test(subset(suspension_df,Manufacturing_Lot== "Lot3")$PSI,mu=1500)

