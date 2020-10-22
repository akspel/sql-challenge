-- Epligoue
SELECT E.emp_no, E.first_name, E.last_name, S.salary
FROM employees AS E
	LEFT JOIN salaries AS S
	ON(E.emp_no = S.emp_no)
	WHERE E.emp_no = '499942';