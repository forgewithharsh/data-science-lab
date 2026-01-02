-- CREATE TABLE accounts (
--     id INT,
--     balance DECIMAL(10,2) CHECK (balance >= 0)
-- );

-- INSERT INTO accounts VALUES(1, -34);
-- SELECT * FROM accounts;

-- CREATE TABLE college_students (
--     roll_no INT PRIMARY KEY,
--     age INT CONSTRAINT chk_age CHECK (age >= 5),
--     email VARCHAR(100) UNIQUE
-- );

INSERT INTO college_students VALUES(1, 56, "harry@codewithharry.com");
SELECT * FROM college_students;