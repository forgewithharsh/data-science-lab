-- SELECT first_name, last_name, salary FROM employees 
-- WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT first_name, last_name FROM employees e
WHERE salary > (
SELECT AVG(salary) FROM employees WHERE department = e.department
);

SELECT * FROM employees;



