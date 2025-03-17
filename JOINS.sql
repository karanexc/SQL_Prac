-- JOINS

## INNER JOINS RETURN ROWS THAT ARE SAME IN BOTH COLUMNS AND TABLES
## LEFT JOIN IS GOING TO TAKE EVERYTHING FROM THE LEFT TABLE 
	## EVEN THOUGH THERE IS NO MATCH IN THE JOIN AND ONLY RETURN MATCHES FROM 
	## THE RIGHT TABLE
## SELF JOIN - IT IS A JOIN WHERE YOU TIE THE TABLE TO ITSELF

SELECT * 
FROM employee_demographics
;

SELECT *
FROM employee_salary;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

---- LEFT AND RIGHT JOIN

SELECT *
FROM employee_demographics AS dem
LEFT OUTER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id   ;
    
SELECT *
FROM employee_demographics AS dem
RIGHT OUTER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id  
    ;
-- SELF JOIN

SELECT emp1.employee_id AS emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_id,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;


-- JOINING MULTIPLE TABLES TOGETHER

SELECT *
FROM parks_and_recreation.employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments as pd
	ON sal.dept_id = pd.department_id
    ;

SELECT *
FROM parks_departments;



