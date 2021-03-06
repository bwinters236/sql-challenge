-- (1) Joins the salary table to the employees table on emp ID, selecting columns for 
-- employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no=s.emp_no;

-- (2) Selects first name, last name, and hire date for employees who were hired between Jan 1 and Dec 31 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- (3) Selecting department number, department name, the manager's employee number, last name, first name from their corresponding tables,
-- joining all 3 tables into one
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
INNER JOIN dept_manager AS dm ON d.dept_no=dm.dept_no
INNER JOIN employees AS e ON dm.emp_no=e.emp_no;

-- (4) Selecting employee number, last name, first name, and department name by joining employees, departments and dept_emp
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no;

-- (5) Selecting employees whose first name is "Hercules" and last names begin with "B." using the LIKE function 
SELECT first_name, last_name, sex FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- (6) Selecting employee number, last name, first name, and department name of everyone in the Sales dept
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales';

-- (7) Selecting employee number, last name, first name, and department name of everyone in the Sales and Development depts
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- (8) How many employees share each last name, in desc order 
SELECT last_name, count(*) 
FROM employees 
GROUP BY last_name 
ORDER BY last_name DESC;


