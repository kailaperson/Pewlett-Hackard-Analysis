# Pewlett-Hackard-Analysis

## Overview of the analysis 
- The purpose of this analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.

## Results
- The query written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955 brought back 133,776 results(minus the header).

![Screen Shot 2022-06-29 at 3 09 04 PM](https://user-images.githubusercontent.com/97639454/176554077-23b94b43-5857-488a-9db3-804f87cb42d6.png)

- As we can see, some of those were repeat employees due to title changes. The query written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title(without duplicates) brought back 72458 results of retiring employees(minus the header).

![Screen Shot 2022-06-29 at 3 11 24 PM](https://user-images.githubusercontent.com/97639454/176554404-af7a038e-3314-4a5b-b447-f79c7d39baa0.png)

- The query written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring showed that Senior Engineer had the most number of retiring employees.

![Screen Shot 2022-06-29 at 3 17 33 PM](https://user-images.githubusercontent.com/97639454/176555149-6b8897f3-196f-41c2-808b-97848125e60f.png)

- The query written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965 brought back results of 1549 employees being eligible for the mentorship program(minus the header).
![Screen Shot 2022-06-29 at 3 18 14 PM](https://user-images.githubusercontent.com/97639454/176555218-cd803cc7-b331-4138-9a2f-7a5c72f2eb46.png)

## Summary 
- The analysis showed that 72458 roles will need to be filled as the silver tsunami begins to impact the company. 
-  There is more than enough retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees being that there is more higher number of retirees.
-  Two additional tables that can be created to provide more insight for the upcoming tsunami will be a a mentorship title table that shows that count of the current titles mentorship eligible employees hold, and a table that shows how many titles will need to be covered.
