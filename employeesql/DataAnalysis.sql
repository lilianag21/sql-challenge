SELECT * FROM departments LIMIT 100;
SELECT * FROM dept_emp LIMIT 100;
SELECT * FROM dept_manager LIMIT 100;
SELECT * FROM employees LIMIT 100;
SELECT * FROM salaries LIMIT 100;
SELECT * FROM titles LIMIT 100;

-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
JOIN dept_emp de ON e.emp_no = de.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT e.last_name, e.first_name, e.hire_date
FROM employees e
WHERE e.hire_date >= '1986-01-01' AND e.hire_date < '1987-01-01';