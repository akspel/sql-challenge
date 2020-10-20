--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT E.emp_no, 
		E.last_name, 
		E.first_name, 
		E.sex, 
		S.salary 
FROM employees AS E
	LEFT JOIN salaries AS S 
	ON (E.emp_no = S.emp_no)
ORDER BY E.emp_no;	
--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT E.emp_no, 
		E.first_name, 
		E.last_name, 
		E.hire_date 
FROM employees AS E
WHERE E.hire_date 
BETWEEN '01-01-1986' AND '12-31-1986';

ALTER TABLE employees
ALTER COLUMN hire_date TYPE date USING hire_date::date;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT D.dept_no, 
		D.dept_name,
		MG.emp_no,
		E.last_name,
		E.first_name
FROM departments as D
	LEFT JOIN dept_manager as MG
	ON (D.dept_no = MG.dept_no)
	LEFT JOIN employees as E
	ON (MG.emp_no = E.emp_no)
ORDER BY D.dept_no;
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT EP.emp_no,
	E.last_name,
	E.first_name,
	D.dept_name
FROM dept_emp as EP
	LEFT JOIN employees as E
	ON(EP.emp_no = E.emp_no)
	LEFT JOIN departments as D
	ON(EP.dept_no = D.dept_no)
ORDER BY emp_no;	
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT E.first_name,
	E.last_name,
	E.sex
FROM employees AS E
WHERE E.first_name = 'Hercules' AND last_name LIKE 'B%'
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
