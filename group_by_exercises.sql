USE employees;

SELECT DISTINCT title
FROM titles;

SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name like 'e%e'
GROUP BY last_name, first_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT like '%qu%'
GROUP BY last_name;

SELECT last_name, count(last_name) AS 'number of people with this last name'
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT count(*) "Number", gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;