---QUERY 1---
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no

---QUERY 2---
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date::date between '1986/01/01' and '1986/12/31'


---QUERY 3---
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager dm
LEFT JOIN departments d
ON d.dept_no = dm.dept_no
LEFT JOIN employees e
ON dm.emp_no = e.emp_no

---QUERY 4---
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e
ON de.emp_no=e.emp_no
JOIN departments d
ON de.dept_no=d.dept_no

---QUERY 5---
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%'

SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN (
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no IN (
		SELECT dept_no
		FROM departments
		WHERE dept_name= 'Sales'
		)
	)

SELECT COUNT(1)
FROM dept_emp

SELECT *
FROM departments