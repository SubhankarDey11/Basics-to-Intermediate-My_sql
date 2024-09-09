-- Window Functions

SELECT gender,AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY gender;


SELECT dem.first_name,dem.last_name,gender,AVG(salary) OVER(partition by gender)
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;
    
SELECT dem.first_name,dem.last_name,gender,AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name,dem.last_name,gender;

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT dem.first_name,dem.last_name,gender, salary,
sum(salary) OVER(partition by gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;
    

SELECT dem.first_name,dem.last_name,gender, salary,
ROW_NUMBER() OVER()
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;    


SELECT dem.first_name,dem.last_name,gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;    

SELECT dem.first_name,dem.last_name,gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC)  rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id;
