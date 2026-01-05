-- SELECT department, COUNT(*) AS total FROM employees GROUP BY department;

SELECT department, AVG(salary) AS total FROM employees GROUP BY department;

SELECT department, SUM(salary) AS total FROM employees GROUP BY department WITH ROLLUP;

