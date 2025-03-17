-- WHERE clause

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie'
;

SELECT *
FROM employee_salary
WHERE salary <= 50000
;

SELECT *
FROM employee_demographics
WHERE birth_date > "1985-01-01"
;

-- AND OR NOT -- Logical operators

SELECT * 
FROM employee_demographics
WHERE (first_name = "Leslie" AND age = 44) OR
age > 55
;

-- LIKE STATEMENT (finding patterns)
-- % and _
SELECT *
FROM employee_demographics
WHERE first_name LIKE "a%"
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE "a_%"
;

SELECT *
FROM employee_demographics
WHERE birth_date > "1977-01-01"

















