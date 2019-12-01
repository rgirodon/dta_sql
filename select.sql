-- Select all employees
SELECT * FROM employees;

-- Select custom columns from employees table
SELECT lastName, firstName FROM employees;

-- Select employees from San Francisco office
SELECT * FROM employees WHERE officeCode = 1;

-- Select employees with lastName starting by 'B'
SELECT * FROM employees WHERE lastName LIKE 'B%';

-- Select employees order by lastName, firstName
SELECT * FROM employees ORDER BY lastName, firstName;