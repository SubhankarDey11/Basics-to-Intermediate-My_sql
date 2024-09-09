-- Group By

SELECT *
FROM employee_demographics;

SELECT Gender
FROM employee_demographics
group by Gender;

SELECT Gender,avg(age)
FROM employee_demographics
group by Gender;

SELECT occupation,salary
FROM employee_salary
group by occupation,salary;

SELECT Gender,avg(age),max(age),min(age),count(age)
FROM employee_demographics
group by Gender;


-- ORDER BY

SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name ASC;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender,age;

SELECT *
FROM employee_demographics
ORDER BY gender,age DESC;

SELECT *
FROM employee_demographics
ORDER BY age,gender;

SELECT *
FROM employee_demographics
ORDER BY 5,4;

SELECT *
FROM employee_demographics
ORDER BY gender,age;

