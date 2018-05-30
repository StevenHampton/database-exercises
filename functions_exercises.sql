USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Vidya', 'Irena', 'Maya')
ORDER BY first_name;

SELECT *
FROM employees
WHERE first_name IN ('Vidya', 'Irena', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Vidya', 'Irena', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE '%E%';

SELECT concat_ws(' ', first_name, last_name)
FROM employees
WHERE first_name like 'e%e'
      and last_name like 'e%e';

SELECT concat_ws(' ',datediff(curdate(), hire_date), 'days') AS DAYSWORKED
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;