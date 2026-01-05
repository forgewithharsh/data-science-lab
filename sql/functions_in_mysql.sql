-- CREATE TABLE employees (
--     employee_id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     email VARCHAR(100) UNIQUE,
--     hire_date DATE,
--     salary DECIMAL(10,2)
-- );

-- INSERT INTO employees (first_name, last_name, email, hire_date, salary)
-- VALUES
-- ('Harsh', 'Guleria', 'harsh.sharma@example.com', '2024-07-01', 45000.00),
-- ('Amit', 'Verma', 'amit.verma@example.com', '2023-09-15', 52000.00);


-- SELECT first_name, last_name, CONCAT(first_name,' ', last_name) as name from employees;

-- SELECT first_name, length(first_name) as len from employees;

SELECT ROUND(DATEDIFF(NOW(), hire_date)/365, 0) as years from employees;

