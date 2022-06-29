-- Employees who are born between January 1, 1952 and December 31, 1955. 
SELECT e.emp_no, 
    e.first_name, 
    e.last_name, 
    ti.title, 
    ti.from_date, 
    ti.to_date
INTO retirement_titles
FROM employees as e 
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no DESC;
 
 -- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles 
WHERE to_date = ('9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

-- The number of titles filled by employees who are retiring
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Mentorship Eligibility table for current employees
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO ment_el
FROM employees as e 
INNER JOIN dept_emp as de 
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti 
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = ('9999-01-01'))
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

