#Deliverable #1

#3. Use the library() function to load the dplyr package.
library(tidyverse) #dplyr imported as part of tidyverse

#4. Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCarData <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mechaCarData)

#5. Perform linear regression using the lm() function. In the lm() function, 
# pass in all six variables (i.e., columns), and add the dataframe you created 
# in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData)

#6. Using the summary() function, determine the p-value and the r-squared 
#value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData))

#7. Save your MechaCarChallenge.RScript file to your GitHub repository.
  # See Github Repo

#---------------------------
#---Deliverable 2-----------
#---------------------------

#2. In your MechaCarChallenge.RScript, import and read in the 
# Suspension_Coil.csv file as a table.
suspension_coil_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(suspension_coil_data)


#3. Write an RScript that creates a total_summary dataframe using the 
#summarize() function to get the mean, median, variance, and standard 
#deviation of the suspension coil’s PSI column.
total_summary <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
total_summary

#4. Write an RScript that creates a lot_summary dataframe using the 
# group_by() and the summarize() functions to group each manufacturing lot 
#by the mean, median, variance, and standard deviation of the suspension 
#coil’s PSI column.
lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
lot_summary

#5. Save your MechaCarChallenge.RScript file to your GitHub repository.
    # See GitHub Repo

#-------------------
#---Deliverable 3---
#-------------------

#1. In your MechaCarChallenge.RScript, write an RScript using the t.test() 
# function to determine if the PSI across all manufacturing lots is 
# statistically different from the population mean of 1,500 pounds 
# per square inch.

allLotsSample <- suspension_coil_data %>% sample_n(50)
t.test(allLotsSample$PSI,mu=mean(suspension_coil_data$PSI))

#2. Next, write three more RScripts in your MechaCarChallenge.RScript using 
#the t.test() function and its subset() argument to determine if the PSI for 
#each manufacturing lot is statistically different from the population mean 
#of 1,500 pounds per square inch.

PSI_Lot1 <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot1') %>% sample_n(50)
t.test(PSI_Lot1$PSI,mu=mean(suspension_coil_data$PSI))

PSI_Lot2 <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot2') %>% sample_n(50)
t.test(PSI_Lot2$PSI,mu=mean(suspension_coil_data$PSI))

PSI_Lot3 <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot3') %>% sample_n(50)
t.test(PSI_Lot3$PSI,mu=mean(suspension_coil_data$PSI))

#3. Save your MechaCarChallenge.RScript file to your GitHub repository.
  #See Github Repo













