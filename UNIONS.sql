-- UNIONS

## Union allows you to combine the rows together
## UNION Allows you to combine the rows of data from seperate tables or from same table
## one select statement and union to select another statement

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age < 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' as Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;












