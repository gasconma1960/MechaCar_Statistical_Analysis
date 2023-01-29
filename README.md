# MechaCar_Statistical_Analysis

# Background

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, I’ll help Jeremy and the data analytics team do the following:

  - Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.

  - Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.

  - Run t-tests to determine if the manufacturing lots are statistically different from the mean population.

  - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

# **Instructions**

# **Part 1: Linear Regression to Predict MPG**
The `MechaCar_mpg.csv` dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using my knowledge of R, I’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the `MechaCar_mpg.csv` file. Then, I’ll write a short interpretation of the multiple linear regression results in the README.md.

Follow the instructions below to complete Part 1.

## **Technical Analysis**

  1. Download the `MechaCar_mpg.csv` file, and place it in the active directory for your R session.

  2. Create a new RScript in your R source pane, name it MechaCarChallenge.RScript, and save it to your active directory.
  
  ![image](https://user-images.githubusercontent.com/112348240/214206815-5e223719-4ab9-4435-8266-7609b020b257.png)

  ![image](https://user-images.githubusercontent.com/112348240/214206970-ee12b449-e51d-4f84-af9d-d13e4b11db85.png)

  3. Use the `library()` function to load the `dplyr` package.
  
  ![image](https://user-images.githubusercontent.com/112348240/214207091-3fca8ddf-9b91-48e4-b0c1-8f2e512d52d3.png)
  
  4. Import and read in the `MechaCar_mpg.csv` file as a dataframe.

  ![image](https://user-images.githubusercontent.com/112348240/214207295-6c1e100f-2711-4929-b14c-dd7ac186f5dc.png)
  
  ![image](https://user-images.githubusercontent.com/112348240/214207462-edf4a86f-f297-440c-acf6-a167d149a948.png)
  
  Better view of the screenshot of the Dataframe
  
  ![image](https://user-images.githubusercontent.com/112348240/213965576-b07c15c5-87d9-49f2-a904-527176d38d3f.png)
  
  5. Perform linear regression using the `lm()` function. In the `lm()` function, pass in all six variables (i.e., columns), and add the dataframe I created in Step 4 as the data parameter.
  
  6. Using the `summary()` function, determine the p-value and the r-squared value for the linear regression model.

  ![image](https://user-images.githubusercontent.com/112348240/214208140-638a1223-ba4d-4a61-997f-28f747973f32.png)
  
  ![image](https://user-images.githubusercontent.com/112348240/214208651-d2c0a93a-1f2d-4319-80f9-177dd935e4a8.png)

  
  7. Save your `MechaCarChallenge.RScript` file to your GitHub repository.

## **Linear Regression to Predict MPG** 

  - Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - (Intercept)
    - Mecha_table$vehicle_length
    - Mecha_table$ground_clearance

  - Is the slope of the linear model considered to be zero? Why or why not?
       >It is not specified whether the slope of the linear model is considered to be zero. The slope of the linear model is represented by the coefficient of the predictor variable(s) in the model. In this case, the coefficients for Mecha_table$vehicle_length, Mecha_table$ground_clearance are non-zero, indicating that the slope of the linear model is not zero.

  - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    >As for the effectiveness of the linear model in predicting mpg of MechaCar prototypes, it can be seen from the multiple R-squared value of 0.7149 that the model explains 71.49% of the variation in mpg. The adjusted R-squared of 0.6825 also indicates that the model is a good fit to the data, however, it's not perfect, so it's important to consider other factors. Additionally, some of the p-values for the predictor variables are not statistically significant, meaning that these variables may not have a strong relationship with mpg.

# **Part 2: Create Visualizations for the Trip Analysis**

The MechaCar `Suspension_Coil.csv` dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using my knowledge of R, I’ll create a summary statistics table to show:

   - The suspension coil’s PSI continuous variable across all manufacturing lots.

   - The following PSI metrics for each lot: mean, median, variance, and standard deviation.

![image](https://user-images.githubusercontent.com/112348240/215303103-10d9ffb1-b6b6-4f7e-b35a-a466a79ec0c8.png)

# **Instructions**

# Part 2.
  1. Download the `Suspension_Coil.csv` file, and place it in the active directory for your R session.

  2. In my `MechaCarChallenge.RScript`, import and read in the `Suspension_Coil.csv` file as a table.
  
![image](https://user-images.githubusercontent.com/112348240/213965501-212ac5f9-2a79-4425-8001-17f93a58922b.png)

  3. Write an RScript that creates a `total_summary` dataframe using the `summarize()` function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
  
![image](https://user-images.githubusercontent.com/112348240/215301262-85b57b69-4cee-4cba-b497-614b740994b1.png)

  My `total_summary` dataframe looks like the one provide on the Module Challenge:
  
  ![image](https://user-images.githubusercontent.com/112348240/213965785-075590fa-9ea1-4434-9001-21ef056c291d.png)

  4. Write an RScript that creates a `lot_summary` dataframe using the `group_by()` and the `summarize()` functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

  My `lot_summary` dataframe looks like the one provide on the Module Challenge:
   
  ![image](https://user-images.githubusercontent.com/112348240/213965659-ee41f4a4-0ccc-49f6-8dc4-1d4bfa08c722.png)

  5. Save your MechaCarChallenge.RScript file to your GitHub repository.
  
## **Summary Statistics on Suspension Coils**

   - The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
   
   First, If we add all three variances for each Lot will Variance = 0.9795918 + 7.4693878 + 170.2861224  will be 178.735102 which exceed the 100 pounds per square inch, that means the current manufacturing data doesnt meet the design specification for all manufacturing lots.
   
   Second, For each lot individually Lot 3 will not meet this design specification, Lot 1 and Lot 2 will. 
    
    
# **Part 3: T-Tests on Suspension Coils**

  Using my knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Follow the instructions below to complete Part 3.

## Technical Analysis
  1. In my `MechaCarChallenge.RScript`, write an RScript using the `t.test()` function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

  2. Next, write three more RScripts in your `MechaCarChallenge.RScript` using the `t.test()` function and its `subset()` argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
  
  3. Save my`MechaCarChallenge.RScript` file to your GitHub repository.

## **T-Tests on Suspension Coils**
  Below will have include screenshots of the t-test to support my summary.

![image](https://user-images.githubusercontent.com/112348240/213965871-ef073152-dd47-453e-a7c2-177e0b2f51de.png)

![image](https://user-images.githubusercontent.com/112348240/213965906-5c3609f5-9543-41dc-8767-eebaaf0d1b7e.png)

![image](https://user-images.githubusercontent.com/112348240/213965937-963f62ac-c460-4c88-8660-7cfba45fea31.png)

# Part 4: Design a Study Comparing the MechaCar to the Competition
Using my knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

Follow the instructions below to complete Part 4.

## **Study Design: MechaCar vs Competition**
- What metric or metrics are you going to test?
  We can try using fuel efficiency and safety rating 

- What is the null hypothesis or alternative hypothesis?
 
  The null hypothesis for this study is that the MechaCar is no different from its competitors in terms of the above-mentioned metrics. The alternative hypothesis is that the MechaCar outperforms its competitors in at least one of these metrics

    - What statistical test would you use to test the hypothesis? And why?
      We will use a two-sample t-test for each of the metrics. This statistical test is appropriate for comparing the means of two groups, and it allows us to determine whether the difference in means is statistically significant.

    - What data is needed to run the statistical test?
      The data needed for this study includes the values for the above-mentioned metrics for the MechaCar and its competitors. This data can be obtained from various sources, such as company websites, consumer reports, and independent testing organizations.


**Module 16 Challenge**

By **Marisol Gascon Linarez**

**UCF Bootcamp Data Visualization and Analytics**




