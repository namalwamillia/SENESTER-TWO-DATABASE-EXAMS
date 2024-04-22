-- Drop the table if it exists
DROP TABLE IF EXISTS employees;

-- Create the employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    address VARCHAR(255)
);

-- Insert data into the employees table
INSERT INTO employees (id, name, age, address)
VALUES
    (1001, 'Rohan', 26, 'Delhi'),
    (1002, 'Ankit', 30, 'Gurgaon'),
    (1003, 'Gaurav', 27, 'Mumbai'),
    (1004, 'Raja', 32, 'Nagpur');

SELECT * FROM employees;

SELECT * FROM employees WHERE id = 1004;
SELECT * FROM employees;

SELECT * FROM employees WHERE name LIKE 'R%';

SELECT id, age, name
FROM employees
ORDER BY age DESC;

SELECT id, age, name
FROM employees
ORDER BY  age ASC;

SELECT DISTINCT address FROM employees;



-- --write a select command to display the details of employeee_id 1004











