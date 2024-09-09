-- Having vs Where

SELECT *
FROM employee_demographics;

SELECT gender,AVG(age)
From employee_demographics
GROUP BY gender
HAVING AVG(age) >40
;

SELECT *
From employee_salary;

SELECT occupation,avg(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
group by occupation;

SELECT occupation,avg(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
group by occupation
HAVING AVG(salary) > 75000
;