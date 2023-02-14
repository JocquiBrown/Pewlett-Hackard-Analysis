# Pewlett-Hackard-Analysis

## Overview
- The purpose of this analysis is to help future-proof Pwelett-Hackard, as employees approach retirement, by determining the number of retiring employees for each job title and finding employees eligible to participate in the mentorship program. 

## Results
- Based on the data gathered from our Employees database the following questions can be answered:

### How many positions will need to be filled over the next few years due to retirement?
- The screenshot below provides a snapshot of the unique_titles table, which contains every employee potentially preparing for retirement and their current role at the company. According to the data Pewlett-Hackard has 72,458 employees potentially retiring over the next few years!
![PH_Challenge_Screenshot_1_RetiringTotal](https://user-images.githubusercontent.com/120291854/218882324-1ebe0bbe-4d1f-4d39-afa7-82ffb404fa1c.png)

### Which positions have the greatest need for future employees?
- The table below has the total number of employees preparing for retirement grouped by job title. Most employees preparing for retirement have Senior job titles. The 'Senior Engineer' and 'Senior Staff' titles are the positions most in need of fututre replacements.  
![retiring_titles.csv](https://github.com/JocquiBrown/Pewlett-Hackard-Analysis/files/10737412/retiring_titles.csv)

### Who's eligible for the mentorship program and how many employees are eligible?
- The table below provides a snapshot of the employees eligible for the mentorship program. All current Pewlett-Hackard employees born in 1965 are eligible for the program. We currently have 1,549 employees eligible to be mentors. 
![PH_Challenge_Screenshot_2_Mentors](https://user-images.githubusercontent.com/120291854/218882500-1ec0e3a6-6e66-40da-ba7c-a2cb6f11d24b.png)

### What's the ratio of mentors relative to the number of positions needed?
- In order to find the ratio of mentors to mentees all we need to do is divide the total number of employees preparing for retirement (this number tells gives us an idea of the number of people moving into these positions) by the total number of employees eligible for the mentorship program. Once we divide 72,458/1,549 we get 46.77. This means that for every mentor, there will be over 46 mentees!

## Summary
- In our analysis we were able to create a list of employees who are potentially preparing for retirement along with their current positions within the company. We were also able to group these employees by job title and count the number of retiring employees for each position. Finally we were able to create a list of employees eligible for the mentorship program designed to prepare current and future Pewlett-Hackard employees to fill these roles. Based on our analysis we can conlude that a large number of employees are set to retire over the next few years from Pewlett-Hackard and only a small fraction of them are eligible for the mentorship program. 

- Despite all of this, there are still a few questions waiting to be answered that could alter the way Pewlett-Hackard moves forward. First, is finding out how many employees eligible for the mentorship program are in each position. This can be determined by simply creating a new table that looks at the count of each employee eligible for the program grouped by job title. This way we can look to see if the program is actually meeting the future needs of the company, and adjust the requirements if necessary. Lastly, we can look at the salaries of each retiring employee in order to potentially prepare a hiring budget for the company. To accomplish this task we can create a new table by performing an 'Inner Join' on the "unique_titles" and "salaries" tables. This will match the salaries from the "salaries" table to the retiring employees in the "unique_titles" table.
