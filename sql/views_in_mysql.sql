-- SELECT * FROM employees;

-- CREATE VIEW harry as SELECT first_name, salary, ROUND(DATEDIFF(NOW(), hire_date)/365, 0) as years from employees;

-- CREATE OR REPLACE VIEW harry as SELECT first_name, last_name, salary, ROUND(DATEDIFF(NOW(), hire_date)/365, 0) as years from employees;

SELECT * FROM harry;

-- SELECT * FROM harry WHERE years > 1;