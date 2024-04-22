-- Drop the table if it exists
DROP TABLE IF EXISTS employees, departments;

-- Create the employees table
CREATE TABLE employees(
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary DECIMAL(10,2),
    department_id INT,
    hire_date DATE
);

-- Create the departments table
CREATE TABLE departments(
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Insert values into the departments table
INSERT INTO departments (id, name) VALUES
(1, 'Engineering'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'HR');

-- Insert values into the employees table
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES
(1, 'Alic', 60000.00, 1, '2020-01-01'),
(2, 'Bob', 70000.00, 1, '2020-01-15'),
(3, 'Charlie', 80000.00, 2, '2020-02-01'),
(4, 'Dave', 90000.00, 3, '2020-02-15'),
(5, 'Eve', 100000.00, 4, '2020-03-01');

-- Query to display employee information with department and the employee with the highest salary in each department
SELECT e.id AS employee_id, e.name AS employee_name, e.salary, d.name AS department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.id;

-- Query to display the employee with the highest salary in each department
SELECT e.department_id, d.name AS department_name, e.id AS employee_id, e.name AS employee_name, e.salary
FROM employees e
INNER JOIN departments d ON e.department_id = d.id
INNER JOIN (
    SELECT department_id, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department_id
) max_salaries ON e.department_id = max_salaries.department_id AND e.salary = max_salaries.max_salary;

--name and hire date of employeee in each department

SELECT e.department_id, d.name AS department_name, e.id AS employee_id, e.name AS employee_name, e.hire_date
FROM employees e
INNER JOIN departments d ON e.department_id = d.id
INNER JOIN (
    SELECT department_id, MIN(hire_date) AS oldest_hire_date
    FROM employees
    GROUP BY department_id
) oldest_hire_dates ON e.department_id = oldest_hire_dates.department_id AND e.hire_date = oldest_hire_dates.oldest_hire_date;
--name and salary of employees whose salary is greater than average salary
SELECT e.name AS employee_name, e.salary
FROM employees e
INNER JOIN (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) dept_avg_salary ON e.department_id = dept_avg_salary.department_id
WHERE e.salary > dept_avg_salary.avg_salary;




