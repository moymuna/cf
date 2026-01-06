SELECT first_name, last_name,job_id,first_name||' '||last_name||' '||job_id "empioyee and title",salary
FROM employees
where salary>10000;

select *
from employees
where department_id = 50;

SELECT last_name
FROM employees
where last_name like 'S%';

SELECT last_name,job_id,department_id,salary
 FROM employees
 order by salary ASC;
   
   SELECT last_name,job_id,department_id,hire_datE
 FROM employees
 order by hire_date DESC;

SELECT last_name,job_id,department_id,hire_datE
 FROM employees
 order by hire_date;
 
 SELECT last_name,job_id,department_id,hire_datE
 FROM employees
 WHERE hire_date BETWEEN '02-jan-01' AND '31-dec-03'
 order by hire_date
 FETCH first 5 rows only;
 
 select COUNT (*)
 from employees;
 
 SELECT &1,&2,salary
 from employees
 where salary =&salary
 order by 1 ,3;

SELECT last_name,first_name,salary
from employees
where salary between &from_salary and &to_salary
order by salary;

