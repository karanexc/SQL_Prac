SELECT * 
FROM employee_demographics;

SELECT first_name, 
age, 
age+10 as "Age + 10",
(age+10) * 20
FROM employee_demographics;
# PEMDAS

SELECT DISTINCT first_name,gender
FROM parks_and_recreation.employee_demographics;