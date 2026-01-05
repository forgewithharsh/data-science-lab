-- SELECT * FROM students;

-- SELECT * FROM marks;

SELECT student_id FROM marks
UNION
SELECT id FROM students;