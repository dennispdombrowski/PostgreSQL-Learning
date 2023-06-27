--Uses the Teachers table from Chapter 2

--Selects all data from the teachers table
--You can also accomplish this by typing TABLE teachers;
SELECT * FROM teachers;

--Select data from specific columns
SELECT last_name, first_name, salary FROM teachers;

--Orders the data from asscending order or decending order using DESC
--Can also order from the number value of the column
SELECT first_name, last_name, salary
FROM teachers
ORDER BY salary DESC;

--You are also able to sort multiple columns in several ways
SELECT last_name, school, hire_date
FROM teachers
ORDER BY school ASC, hire_date DESC;

--You can use the DISTINCT keyword to to eliminate duplicate data
SELECT DISTINCT school
FROM teachers
ORDER BY school;

/*Use WHERE to locate a specific data value. There are different comparison and
matching operators we can use */
SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';

--LIKE and ILIKE
SELECT first_name
FROM teachers
WHERE first_name LIKE 'sam%';

SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';

--Combining operators using AND and OR

SELECT *
FROM teachers
WHERE school = 'Myers Middle School'
      AND salary < 40000;

SELECT *
FROM teachers
WHERE last_name = 'Cole'
      OR last_name = 'Bush';

SELECT *
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
      AND (salary < 38000 OR salary > 40000);
	  
--A SELECT statement including WHERE and ORDER BY

SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;
