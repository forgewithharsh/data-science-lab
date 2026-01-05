-- SELECT * FROM employees;
-- SELECT first_name from employees;

-- DELIMITER //

-- CREATE PROCEDURE list_employees()

-- begin
-- SELECT * FROM employees;
-- SELECT first_name from employees;
-- end //

-- DELIMITER ;

-- CALL list_employees();


-- DELIMITER //

-- CREATE PROCEDURE get_employee_by_id(IN emp_id INT)
-- BEGIN
--     SELECT * FROM employees WHERE employee_id = emp_id;
-- END //

-- DELIMITER ;

CALL get_employee_by_id(3);

-- DROP PROCEDURE IF EXISTS get_employee_by_id;



