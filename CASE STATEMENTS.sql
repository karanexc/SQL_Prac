-- Case Statements

SELECT first_name, 
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END AS age_bracket
FROM employee_demographics;


-- PAY INCREASE AND BONUS
-- If they made less than 50k = 5% bonus
-- If they made greater than 50k = 7% bonus
-- Finance = 10% bonus

SELECT first_name, last_name, salary, dept_id,
CASE
	WHEN salary < 50000 THEN salary + (salary*0.05)
    WHEN salary > 50000 THEN salary + (salary*0.07)
    
    WHEN dept_id = 6 THEN salary + (salary * 0.1)
END AS salary_with_bonus
FROM employee_salary;





