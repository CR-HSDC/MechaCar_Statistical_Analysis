# MechaCar Prototype Analysis

### **Overview of the MechaCar Prototype Analysis**
The purpose of this analysis is to assess the Manufacturing lots data for 3 lots of data, provided for the MechaCar prototype.

The findings of this analysis are discussed below.


## Linear Regression to Predict MPG
![Figure 1](https://github.com/CR-HSDC/MechaCar_Statistical_Analysis/blob/main/Resources/del1_linReg.png)
**_Figure 1_:** Linear Regression to Predict MPG (Vehicle Length, Vehicle Weight, Spolier Angle, AWD (Drive Type), Ground Clearance) 

From the above analysis and per ***Figure 1***, MPG may be defined as:

MPG = (6.27 * vehicle\_length) + (1.25E-03 * vehicle\_weight) + (6.88E-02 * spoiler\_angle) - (3.41 * AWD) -(3.55 * ground_clearance) - 104

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

Vehicle Length and Ground Clearance provided a non-random amount of variance to the MPG values in the dataset.

**Is the slope of the linear model considered to be zero? Why or why not?**

It should not be considered to be zero; per output of multi linear regression the formula for mpg is as below; for slope to equal zero, the slope component (m in mX + C) would need to be zero, this is not the case per the output in R code and per ***Figure 1***, it can be seen that vehicle\_length, vehicle\_weight, spoiler\_angle and ground\_clearance each contribute to the slope component.

MPG = (6.27 * vehicle\_length) + (1.25E-03 * vehicle\_weight) + (6.88E-02 * spoiler\_angle) - (3.41 * AWD) -(3.55 * ground_clearance) - 104

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
![Figure 2](https://github.com/CR-HSDC/MechaCar_Statistical_Analysis/blob/main/Resources/Del1_SummaryData.png)
**_Figure 2_:** MechaCar Summary Data

Multiple R Squared value is 71.49% per ***Figure 2***, this provides a reliable degree of accuracy that mpg efficinecy is related to vehicle length, weight, spoiler angle, AWD and ground clearance and may be used to predict MPG of MechaCar prototypes effectively.
 

## Summary Statistics on Suspension Coils
**write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:**

*The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?*

![Figure 3](https://github.com/CR-HSDC/MechaCar_Statistical_Analysis/blob/main/Resources/del2_total_summary.png)
**_Figure 3_:** Suspensions Coils Total Summary 

All lots (total_summary dataframe) have a mean value of 1498.78, a median of 1500, a variance of 62.3 and standard deviation of 7.89

![Figure 4](https://github.com/CR-HSDC/MechaCar_Statistical_Analysis/blob/main/Resources/del2_variance.png)
**_Figure 4_:** Suspension Coils Lot Variance
Lot 1 has a mean of 1500, median of 1500, variance of 0.98 and standard deviation of 0.99.
Lot 2 has a mean of 1500, median of 1500, variance of 0.98 and standard deviation of 0.99.
Lot 3 has a mean of 1496, median of 1498, variance of 170 and standard deviation of 13.

Lot 3 shows considerabel variability in manfuacturing, compared to Lots 1 & 2.

The current manufacturing data does not meet design specification. Per ***Figure 4*** Lot 3 shows a variance >170, surpassing the design specification of 100 PSI variance.

## T-Tests on Suspension Coils

![Figure 5](https://github.com/CR-HSDC/MechaCar_Statistical_Analysis/blob/main/Resources/del3_TTest_all.png)
**_Figure 5_:** Suspension Coil T-Test - All Lots

![Figure 6](https://github.com/CR-HSDC/MechaCar_Statistical_Analysis/blob/main/Resources/del3_TTest_lots.png)
**_Figure 6_:** Suspension Coil T-Test - Individual Lots


**Summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.**

Across all lots there is a p-value of 0.1503, per ***Figure 5***, rejecting the alternate hypothesis that the true mean is not equal to 1498.78

For Lot 1 there is a p-value of 1.57E-11, per ***Figure 6***, supporting the alternate hypothesis that the true mean is not equal to 1498.78

For Lot 2 there is a p-value of 0.00059, per ***Figure 6***, supporting the alternate hypothesis that the true mean is not equal to 1498.78

For Lot 3 there is a p-value of 0.1589, per ***Figure 6***, rejecting the alternate hypothesis that the true mean is not equal to 1498.78


## Study Design: MechaCar vs Competition
**Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.**

**What metric or metrics are you going to test?**

Torque Rating (i.e. pulling power). This figure may be highly relevant in certain areas (e.g. rural areas, favoring vehicles with more pulling power). This may help MechaCar marketing, if directed to these areas.

**What is the null hypothesis or alternative hypothesis?**

*Null Hypothesis:* MechaCar torque rating is not statistically different to a random sample of its class / price range.

*Alternate Hypothesis:* MechaCar has the highest torque rating in its class / price range.

**What statistical test would you use to test the hypothesis? And why?**

Analysis of variance may be used to test the hyptothesis. ANOVA should be used due to categorical nature of data and the number of populations (>2).

**What data is needed to run the statistical test?**

Calibrated sensors may collect torque data for a categorical range of vehicles (the 'Competition') and the dataset can be assessed. Collection terms should be defined (e.g. pulling load, off road etc...) and necessary controls applied, so that reliable data may be provided for analysis. This experimental data may be assessed via the statistical tests outlined above.






