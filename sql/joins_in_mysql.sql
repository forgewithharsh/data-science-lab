-- SELECT students.name, marks.subject, marks.score FROM students INNER JOIN marks on students.id=marks.student_id;

-- SELECT students.name, marks.subject, marks.score FROM students LEFT JOIN marks on students.id=marks.student_id;

-- SELECT students.name, marks.subject, marks.score FROM students RIGHT JOIN marks on students.id=marks.student_id;

SELECT students.name, marks.subject, marks.score FROM students CROSS JOIN marks;