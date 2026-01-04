SELECT hire_date,last_name,email,commission_pct,salary
FROM employees;

desc employees;

SELECT hire_date,last_name,email,commission_pct,salary
FROM employees;

SELECT hire_date,last_name Name,email "Email",commission_pct,salary,salary + commission_pct as "salary with commision"
FROM employees;

SELECT first_name ||' '||last_name as "full name"
FROM employees;

SELECT 'My first name is '|| first_name||' my last name is '||last_name as "full name"
FROM employees;

SELECT DISTINCT department_id FROM employees ;

SELECT DISTINCT salary FROM employees ;

SELECT *
from employees
where salary =12000 ;

SELECT last_name,salary,email
from employees
where salary BETWEEN 2000 and 5000 ;

SELECT last_name,salary,email
from employees
where salary in(6000,8000,10000,24000) ;

select  last_name,salary,email,commission_pct
from employees
where salary in(6000,8000,10000,24000)and commission_pct BETWEEN 0.3 and 0.5 ;

select  last_name,salary,email,commission_pct
from employees
where salary in(5000,8000,12000) and last_name like 'S%' ;

select  last_name,salary,email,commission_pct
from employees
where salary in(5000,8000,12000)and last_name like '%s' ;

select  last_name,salary,email,commission_pct
from employees
where salary in(5000,8000,12000)or last_name like 'S%' ;

select salary ,last_name
from employees
where salary BETWEEN 2000 and 3500 and last_name like'_%s%_';

select salary ,last_name,email,commission_pct
from employees
where last_name='Smith';

select  salary ,last_name,email,commission_pct
from employees
where commission_pct is null;


