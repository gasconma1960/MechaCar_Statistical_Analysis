# MechaCar_Statistical_Analysis

# Background
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.
What You're Creating
This new assignment consists of three technical analysis parts and a proposal for further statistical study. You’ll submit the following:

Part 1: Linear Regression to Predict MPG
Part 2: Summary Statistics on Suspension Coils
Part 3: T-Test on Suspension Coils
Part 4: Design a Study Comparing the MechaCar to the Competition
Files
Use the following link to download the Challenge data sets.

Module 16 challenge starter codeLinks to an external site.
Before You Start
Create a new GitHub repository, "MechaCar_Statistical_Analysis," and initialize the repository with a README.

After you’ve completed the technical analysis for each part, provide a short summary of the results in the README.md of the analysis. For the final part, you’ll write up a short description of the study design for additional statistical analysis. In the written summaries, we would like you to think critically about your analysis, not demonstrate proficiency of automotive manufacturing.

Instructions
# Part 1: Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. Then, you’ll write a short interpretation of the multiple linear regression results in the README.md.

Follow the instructions below to complete Part 1.

Technical Analysis
Download the MechaCar_mpg.csv file, and place it in the active directory for your R session.

Create a new RScript in your R source pane, name it MechaCarChallenge.RScript, and save it to your active directory.

NOTE
Create a new RScript by going to the File menu. Select "New File," followed by "RScript," or you can click the icon in the top-left corner of the RStudio window. Note that the icon looks like a white square with a plus sign in the top left corner.

Use the library() function to load the dplyr package.

Import and read in the MechaCar_mpg.csv file as a dataframe.

Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.

Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

Save your MechaCarChallenge.RScript file to your GitHub repository.

Written Summary
In your README, create a subheading, ## Linear Regression to Predict MPG, and write a short summary using a screenshot of the output from the linear regression, and address the following questions:

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Is the slope of the linear model considered to be zero? Why or why not?

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

# Part 2: Create Visualizations for the Trip Analysis
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using your knowledge of R, you’ll create a summary statistics table to show:

The suspension coil’s PSI continuous variable across all manufacturing lots.

The following PSI metrics for each lot: mean, median, variance, and standard deviation.

Then, in the README.md, you’ll briefly detail and interpret the suspension coil summary statistics.

Follow the instructions below to complete Part 2.

Technical Analysis
Download the Suspension_Coil.csv file, and place it in the active directory for your R session.

In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.

Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Your total_summary dataframe should look like this:

The total summary dataframe showing the mean, median, variance, and standard deviation
Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Your lot_summary dataframe should look like this:

The lot summary dataframe showing the mean, median, variance, and standard deviation for each manufacturing lot
Save your MechaCarChallenge.RScript file to your GitHub repository.

Written Summary
In your README, create a subheading ## Summary Statistics on Suspension Coils, and write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
# Part 3: T-Tests on Suspension Coils
Using your knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Follow the instructions below to complete Part 3.

Technical Analysis
In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

HINT
Save your MechaCarChallenge.RScript file to your GitHub repository.

Written Summary
In your README, create a subheading ## T-Tests on Suspension Coils, then briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

# Part 4: Design a Study Comparing the MechaCar to the Competition
Using your knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

Follow the instructions below to complete Part 4.

In your README, create a subheading ## Study Design: MechaCar vs Competition.

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:

What metric or metrics are you going to test?

What is the null hypothesis or alternative hypothesis?

What statistical test would you use to test the hypothesis? And why?

What data is needed to run the statistical test?

![image](https://user-images.githubusercontent.com/112348240/213965501-212ac5f9-2a79-4425-8001-17f93a58922b.png)

![image](https://user-images.githubusercontent.com/112348240/213965576-b07c15c5-87d9-49f2-a904-527176d38d3f.png)
![image](https://user-images.githubusercontent.com/112348240/213965659-ee41f4a4-0ccc-49f6-8dc4-1d4bfa08c722.png)

![image](https://user-images.githubusercontent.com/112348240/213965785-075590fa-9ea1-4434-9001-21ef056c291d.png)

![image](https://user-images.githubusercontent.com/112348240/213965871-ef073152-dd47-453e-a7c2-177e0b2f51de.png)

![image](https://user-images.githubusercontent.com/112348240/213965906-5c3609f5-9543-41dc-8767-eebaaf0d1b7e.png)

![image](https://user-images.githubusercontent.com/112348240/213965937-963f62ac-c460-4c88-8660-7cfba45fea31.png)


**Module 16 Challenge**

By **Marisol Gascon Linarez**

**UCF Bootcamp Data Visualization and Analytics**




