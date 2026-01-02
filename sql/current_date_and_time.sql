-- SELECT CURRENT_DATE;

-- SELECT CURRENT_TIME;

-- SELECT CURRENT_TIMESTAMP;
-- SELECT NOW(); 

-- SELECT * FROM students;

-- ALTER TABLE students ADD COLUMN date_joined DATETIME DEFAULT (NOW());

INSERT INTO students (id, age, date_joined)
VALUES (23, 56, NOW());

SELECT * FROM students;