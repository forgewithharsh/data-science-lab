-- USE schoolDB; 

-- SELECT name, age, date_of_birth FROM student WHERE grade = "10th";

-- SELECT * FROM student WHERE age > 16 and grade = "10th";

-- SELECT * FROM student WHERE age BETWEEN 16 AND 18;

-- SELECT * FROM student WHERE name LIKE '%an';

-- SELECT * FROM student WHERE date_of_birth IS NOT NULL AND age > 16 AND grade = "10th";

-- SELECT * FROM student WHERE date_of_birth IS NOT NULL ORDER BY age DESC;

SELECT * FROM student WHERE date_of_birth IS NOT NULL ORDER BY age ASC LIMIT 2, 5;

