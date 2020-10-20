CREATE TABLE titles(
    title_id  CHAR(10) NOT NULL,
    title VARCHAR(25) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE employees(
    emp_no CHAR(10) NOT NULL,
    emp_title_id CHAR(10) NOT NULL,
    birth_date CHAR(10) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    sex VARCHAR(2) NOT NULL,
    hire_date CHAR(10) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
    emp_no CHAR(10) NOT NULL,
    dept_no CHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager(
    dept_no CHAR(4) NOT NULL,
    emp_no CHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE salaries(
    emp_no CHAR(10) NOT NULL,
    salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);