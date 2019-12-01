-- Select employee firstName, lastName and office city
SELECT e.firstName, e.lastName, o.city
  FROM employees e 
  JOIN offices o ON e.officeCode = o.officeCode;

-- Select customer names and their sales representative
SELECT c.customerName, e.firstName, e.lastName
  FROM customers c
  JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber;

-- Select customer names and their sales representative, and don't forget customers without sales representative !
SELECT c.customerName, e.firstName, e.lastName
  FROM customers c
  LEFT JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber;