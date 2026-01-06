SELECT first_name ,last_name,salary
FROM employees
where salary BETWEEN 4000 and 8000
order by salary ;

SELECT hire_date 
from employees
where hire_date > '01-jan-23'
order by hire_date desc;


SELECT first_name, last_name, department_id,salary         
from employees
--where department_id =50 or department_id=80 
where department_id in(50,80)
order by department_id,last_name;
DESC employees;

SELECT last_name,
SUBSTR(last_name,1,3),
concat (substr(last_name,1,4),' _US'),
upper(concat(substr(last_name,1,5),' _US'))
FROM employees
WHERE department_id=60;

SELECT first_name,last_name,
concat('my first name is ',concat(first_name ,concat('my last name is ',last_name)))
from employees;

select round(55.956,2)
from dual;

select TRUNC(159.79,1)
from dual;
 
 SELECT ceil(250.13)
from dual;
 
 SELECT floor(245.567)
from dual;

SELECT mod (20,6)
FROM dual;

 
 
