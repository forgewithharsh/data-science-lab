-- USE harry;
-- SELECT * FROM students;

-- SELECT @@autocommit;

-- SET autocommit = 0;

-- ALTER TABLE students DROP COLUMN adm_dt;

-- SELECT * FROM students;
-- INSERT INTO students (id, age, email, is_passed, name)
-- VALUES(1, 34, "harry@codewithharry.com", true, "Harry");

-- INSERT INTO students (id, age, email, is_passed, name)
-- VALUES(2, 24, "harry2@codewithharry.com", false, "Harry2");

-- SELECT * FROM students;

-- START TRANSACTION;
-- UPDATE students SET age = age + 1 WHERE id = 1;
-- UPDATE students SET age = age - 1 WHERE id = 2;


-- SELECT * FROM students;
-- ROLLBACK;
-- SELECT * FROM students;

SET autocommit = 1;



